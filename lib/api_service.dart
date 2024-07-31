import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = 'http://your_flask_backend_url';

  Future<Map<String, dynamic>> createCommunity(String name, String description, List<String> tags, String moderator) async {
    final response = await http.post(
      Uri.parse('$baseUrl/api/communities'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        'Name': name,
        'Desc': description,
        'Tags': tags,
        'Moderator': moderator,
      }),
    );

    if (response.statusCode == 201) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to create community');
    }
  }

  Future<Map<String, dynamic>> joinCommunity(String communityId, String userId) async {
    final response = await http.post(
      Uri.parse('$baseUrl/api/communities/$communityId/join'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        'userId': userId,
      }),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to join community');
    }
  }

  Future<Map<String, dynamic>> leaveCommunity(String communityId, String userId) async {
    final response = await http.post(
      Uri.parse('$baseUrl/api/communities/$communityId/leave'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        'userId': userId,
      }),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to leave community');
    }
  }
}
