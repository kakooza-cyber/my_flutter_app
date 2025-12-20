import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {

  static const String _baseUrl = "https://zenquotes.io/api";

  // Daily Quote

  static Future<Map<String, dynamic>> fetchDailyQuote() async {

    final response = await http.get(Uri.parse("$_baseUrl/today"));

    if (response.statusCode == 200) {

      final data = jsonDecode(response.body);

      return {

        "quote": data[0]["q"],

        "author": data[0]["a"],

      };

    } else {

      throw Exception("Failed to load daily quote");

    }

  }

  // All Quotes

  static Future<List<Map<String, dynamic>>> fetchQuotes() async {

    final response = await http.get(Uri.parse("$_baseUrl/quotes"));

    if (response.statusCode == 200) {

      final List data = jsonDecode(response.body);

      return data

          .map((item) => {

                "quote": item["q"],

                "author": item["a"],

              })

          .toList();

    } else {

      throw Exception("Failed to load quotes");

    }

  }

}