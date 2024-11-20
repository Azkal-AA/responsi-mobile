import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:responsi/models/contentModel.dart';

const String baseUrl = "https://restaurant-api.dicoding.dev";

class ApiService {
  static Future<List<ContentModel>> fetchData(String type) async {
    final response = await http.get(Uri.parse('$baseUrl/$type'));

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonResponse = jsonDecode(response.body);
      if (jsonResponse['restaurants'] != null) {
        List<dynamic> data = jsonResponse['restaurants'];
        return data.map((item) => ContentModel.fromJson(item)).toList();
      } else {
        throw Exception('Key "restaurants" tidak ditemukan dalam respons JSON');
      }
    } else {
      throw Exception('Failed to load $type: ${response.statusCode}');
    }
  }
}
