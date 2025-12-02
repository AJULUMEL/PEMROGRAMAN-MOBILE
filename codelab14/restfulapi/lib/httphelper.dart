import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'pizza.dart';

class HttpHelper {
  static final HttpHelper _httpHelper = HttpHelper._internal();
  HttpHelper._internal();
  factory HttpHelper() {
    return _httpHelper;
  }

  final String authority = 'zvy4g.wiremockapi.cloud';
  final String path = '/pizzalist';

  Future<List<Pizza>> getPizzaList() async {
    final Uri url = Uri.https(authority, path);
    print('Fetching from: $url');

    try {
      final http.Response result = await http.get(url);
      print('Status code: ${result.statusCode}');
      print('Response body: ${result.body}');

      if (result.statusCode == HttpStatus.ok) {
        final jsonResponse = json.decode(result.body);
        List<Pizza> pizzas = jsonResponse
            .map<Pizza>((i) => Pizza.fromJson(i))
            .toList();
        return pizzas;
      } else {
        print('Error: Status code ${result.statusCode}');
        return [];
      }
    } catch (e) {
      print('Exception: $e');
      rethrow;
    }
  }

  Future<String> postPizza(Pizza pizza) async {
    const postPath = '/pizza';
    String post = json.encode(pizza.toJson());
    Uri url = Uri.https(authority, postPath);
    http.Response r = await http.post(
      url,
      body: post,
      headers: {'Content-Type': 'application/json'},
    );
    return r.body;
  }
}
