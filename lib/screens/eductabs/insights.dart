import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// Define a class to hold the stock information
class StockInfo {
  final String symbol;
  final String name;
  final double price;
  final double prevClose;
  final int volume;
  final String exchange;
  final double changePercent;
  final String timePeriod;

  StockInfo({
    required this.symbol,
    required this.name,
    required this.price,
    required this.prevClose,
    required this.volume,
    required this.exchange,
    required this.changePercent,
    required this.timePeriod,
  });

  factory StockInfo.fromJson(Map<String, dynamic> json) {
    return StockInfo(
      symbol: json['symbol'],
      name: json['name'],
      price: json['price'].toDouble(),
      prevClose: json['prev_close'].toDouble(),
      volume: json['volume'],
      exchange: json['exchange'],
      changePercent: json['change_percent'].toDouble(),
      timePeriod: json['time_period'],
    );
  }
}

class CompanyInsightsPage extends StatefulWidget {
  const CompanyInsightsPage({Key? key}) : super(key: key);

  @override
  _CompanyInsightsPageState createState() => _CompanyInsightsPageState();
}

class _CompanyInsightsPageState extends State<CompanyInsightsPage> {
  final TextEditingController _searchController = TextEditingController();
  late Future<StockInfo> _stockInfo;

  @override
  void initState() {
    super.initState();
    _stockInfo = fetchStockInfo('AAPL'); // Default company
  }

  Future<StockInfo> fetchStockInfo(String symbol) async {
    final response = await http.post(
      Uri.parse('http://10.0.2.2:3001/generate_article'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'symbol': symbol, 'time_period': 'Mid-day'}),
    );

    if (response.statusCode == 200) {
      return StockInfo.fromJson(jsonDecode(response.body));
    } else {
      throw Exception(' ');
    }
  }

  void _searchCompany() {
    setState(() {
      _stockInfo = fetchStockInfo(_searchController.text.trim());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Company Insights'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            searchBox(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    FutureBuilder<StockInfo>(
                      future: _stockInfo,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.waiting) {
                          return const Center(child: CircularProgressIndicator());
                        } else if (snapshot.hasError) {
                          return Center(child: Text('Error: ${snapshot.error}'));
                        } else if (!snapshot.hasData) {
                          return const Center(child: Text('No insights available.'));
                        } else {
                          final stockInfo = snapshot.data!;
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Insights',
                                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 10),
                              InfoCard(
                                title: stockInfo.name,
                                description: 'Stock Symbol: ${stockInfo.symbol}\n'
                                    'Price: \$${stockInfo.price}\n'
                                    'Previous Close: \$${stockInfo.prevClose}\n'
                                    'Volume: ${stockInfo.volume}\n'
                                    'Exchange: ${stockInfo.exchange}\n'
                                    'Change Percent: ${stockInfo.changePercent}%',
                              ),
                              const SizedBox(height: 20),
                              Text(
                                'Price Data',
                                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 10),
                              Text('Current Price: \$${stockInfo.price}'),
                            ],
                          );
                        }
                      },
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Graph',
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Image.asset('assets/images/garph1.jpg'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget searchBox() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _searchController,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(0),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 20,
                ),
                prefixIconConstraints: BoxConstraints(
                  maxHeight: 20,
                  minWidth: 25,
                ),
                border: InputBorder.none,
                hintText: 'Search Company ',
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: _searchCompany,
          ),
        ],
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String title;
  final String description;

  const InfoCard({
    required this.title,
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        subtitle: Text(description),
      ),
    );
  }
}
