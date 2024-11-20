import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:responsi/models/contentModel.dart';

const String baseUrl = "https://restaurant-api.dicoding.dev/";

class ApiService {
  static Future<List<ContentModel>> fetchData(
    String type,
  ) async {
    final response = await http.get(Uri.parse('$baseUrl$type/'));
    if (response.statusCode == 200) {
      List data = jsonDecode(response.body);
      return data.map((item) => ContentModel.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load $type');
    }
  }
}
