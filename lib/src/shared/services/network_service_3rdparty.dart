import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final NetworkService3rdPartyProvider = Provider<NetworkService3rdParty>((ref) => NetworkService3rdParty());

class NetworkService3rdParty {
  final String? baseUrl = dotenv.env['API_3RD_PARTY_URI'];
  final key = dotenv.env['API_KEY'];

  Future<Map<String, dynamic>> post(String endpoint, Map<String, dynamic> body,
      {Map<String, String>? headers}) async {
    final response = await http.post(
      Uri.parse('$baseUrl/$key$endpoint'),
      headers: _headers(headers),
      body: jsonEncode(body),
    );

    return _handleResponse(response);
  }

  Future<Map<String, dynamic>> get(String endpoint, {Map<String, String>? headers, Map<String, String>? queryParams}) async {
    final uri = Uri.parse('$baseUrl/$key$endpoint').replace(queryParameters: queryParams);
    final response = await http.get(
      uri,
      headers: _headers(headers),
    );

    return _handleResponse(response);
  }

  Future<Map<String, dynamic>> put(String endpoint, Map<String, dynamic> body,
      {Map<String, String>? headers}) async {
    final response = await http.put(
      Uri.parse('$baseUrl/$key$endpoint'),
      headers: _headers(headers),
      body: jsonEncode(body),
    );

    return _handleResponse(response);
  }

  Future<Map<String, dynamic>> delete(String endpoint,
      {Map<String, String>? headers}) async {
    final response = await http.delete(
      Uri.parse('$baseUrl/$key$endpoint'),
      headers: _headers(headers),
    );

    return _handleResponse(response);
  }

  Map<String, String> _headers([Map<String, String>? headers]) {
    final defaultHeaders = <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    };

    if (headers != null) {
      defaultHeaders.addAll(headers);
    }

    return defaultHeaders;
  }

  Map<String, dynamic> _handleResponse(http.Response response) {
    final decodedBody = jsonDecode(response.body);
    switch (response.statusCode) {
      case 200:
        return decodedBody;
      case 201:
        return decodedBody;
      case 400:
        throw Exception(decodedBody['message']);
      case 401:
        throw Exception('Token Expired');
      case 403:
        throw Exception(decodedBody['message']);
      case 404:
        throw Exception('Not Found');
      case 500:
        throw Exception('Internal Server Error');
      case 501:
        throw Exception('Not Implemented');
      default:
        throw Exception('Error occurred while communicating with server: ${response.statusCode}');
    }
  }
}