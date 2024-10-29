import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiController with ChangeNotifier {
  String? apiToken;

  Future<bool> loginApi(String name, String password) async {
    var request = http.MultipartRequest(
      'POST',
      Uri.parse('https://flutter-amr.noviindus.in/api/Login'),
    );

    request.fields['username'] = name;
    request.fields['password'] = password;

    try {
      var response = await request.send();
      var responseBody = await response.stream.bytesToString();

      if (response.statusCode == 200) {
        log('Login successful');
        final Map<String, dynamic> responseData = jsonDecode(responseBody);
        apiToken = responseData['token'];
        notifyListeners();
        return true;
      } else {
        log('Error: ${response.statusCode}, $responseBody');
        return false;
      }
    } catch (e) {
      log('Exception: $e');
      return false;
    }
  }
}
