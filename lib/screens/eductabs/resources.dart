import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class Resources extends StatelessWidget {
  const Resources({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> titles = [
      " ",
      " ",
      " ",
      " "
    ];

    final List<String> imageList = [
      "assets/images/a1.jpg",
      "assets/images/a2.jpg",
      "assets/images/a3.jpg",
      "assets/images/a4.jpg",
    ];

    // Make sure images are loaded correctly
    List<Widget> images = imageList.map((image) {
      return Container(
        decoration: BoxDecoration(
          color: Colors.black45,
          image: DecorationImage(
            fit: BoxFit.cover, // Change to BoxFit.cover for better fitting
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.7), 
              BlendMode.dstATop
            ),
            image: AssetImage(image),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        // Add a fixed height to see if images appear
        height: 200.0,
        width: double.infinity,
      );
    }).toList();

    return SafeArea(
      child: VerticalCardPager(
        titles: titles,
        images: images,
        textStyle: TextStyle(fontSize: 14, color: Colors.white),
      ),
    );
  }
}
