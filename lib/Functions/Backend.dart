import 'dart:convert';

import '../main.dart';
import 'package:http/http.dart' as http;

Future<Map> login(String username, String password) async {
  var loginURI = backendBaseURI.resolve('login/');
  var response = await http.post(loginURI, body: {
    'username': username,
    'password': password
  });

  return jsonDecode(response.body);
}

Future<Map> inscription(Map form) async {
  var incriptionURI = backendBaseURI.resolve('member/');

  var response = await http.post(incriptionURI, body: form);

  print(response.body);

  return jsonDecode(response.body);
}