import 'dart:convert';

import '../main.dart';
import 'package:http/http.dart' as http;

Future<String> login(String username, String password) async {
  var loginURI = backendBaseURI.resolve('login/');
  var response = await http.post(loginURI, body: {
    'username': username,
    'password': password
  });

  return jsonDecode(response.body);
}