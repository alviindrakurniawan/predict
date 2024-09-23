import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:scora/src/core/core.dart';
import 'package:scora/src/features/auth/auth.dart';
import 'package:scora/src/features/auth/views/signup_otp_view.dart';
import 'package:scora/src/shared/providers/providers.dart';

final NetworkAuthServiceProvider = Provider.autoDispose<NetworkAuthService>((ref)  {
  final sessionService = ref.watch(sessionProviderProvider);
  // final sessionService="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ImQ1Yjg0NzZlLWI2OGQtNDQ5OC1hZjc2LTg4MmFiNjZhZTA0MiIsIm5hbWUiOm51bGwsImVtYWlsIjoiYWx2aW5pbmRyYWt1cm5pYXdhbjY4QGdtYWlsLmNvbSIsInBob25lIjpudWxsLCJhdmF0YXIiOm51bGwsImlhdCI6MTcyNTA5MDgyNiwiZXhwIjoxNzU2NjI2ODI2fQ.RSsFi7HotBEWuRxNjWpiUmevLjJ09aNDsYIlEnPjH3w";
  return NetworkAuthService(sessionService);
});


class NetworkAuthService {
  final String? baseUrl = dotenv.env['API_URI'];
  final String? token;

  NetworkAuthService(this.token);

  Future<Map<String, dynamic>> post(String endpoint, Map<String, dynamic> body,
      {Map<String, String>? headers}) async {
    try {
      final header = await _headers(headers);
      final response = await http.post(
        Uri.parse('$baseUrl$endpoint'),
        headers: header,
        body: jsonEncode(body),
      );

      return _handleResponse(response);
    } on SocketException {
      throw Exception('No internet connection. Please check your network.');
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }

  Future<Map<String, dynamic>> get(String endpoint, {Map<String, String>? headers, Map<String, dynamic>? queryParams}) async {
    final uri = Uri.parse('$baseUrl$endpoint').replace(queryParameters: queryParams);
    final header = await _headers(headers);
    try{
      final response = await http.get(
        uri,
        headers: header,
      );
      return _handleResponse(response);
    }on SocketException {
      throw Exception('No internet connection. Please check your network.');
    } catch(e){
      throw Exception('An unexpected error occurred: $e');
    }



  }

  Future<Map<String, dynamic>> put(String endpoint, Map<String, dynamic> body,
      {Map<String, String>? headers}) async {
    final header = await _headers(headers);
    final response = await http.put(
      Uri.parse('$baseUrl$endpoint'),
      headers: header,
      body: jsonEncode(body),
    );

    return _handleResponse(response);
  }


  Future<Map<String, dynamic>> delete(String endpoint,
      {Map<String, String>? headers}) async {
    final header = await _headers(headers);
    final response = await http.delete(
      Uri.parse('$baseUrl$endpoint'),
      headers: header,
    );

    return _handleResponse(response);
  }

  Future<Map<String, String>> _headers([Map<String, String>? headers]) async {
    final defaultHeaders = <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $token',
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
      case 201:
        return decodedBody;
      case 400:
        throw Exception(decodedBody['responseMessage']);
      case 401:
        throw decodedBody['responseMessage'];
      case 403:
        throw decodedBody['responseMessage'];
      case 404:
        throw decodedBody['responseMessage'];
      case 422:
        throw decodedBody['responseMessage'];
      case 409:
        throw decodedBody['responseMessage'];
      case 500:
        throw Exception('Internal Server Error');
      case 501:
        throw Exception('Not Implemented');
      default:
        throw Exception('Error occurred while communicating with server: ${response.statusCode}');
    }
  }
}


