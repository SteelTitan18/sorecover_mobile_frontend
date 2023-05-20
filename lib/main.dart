import 'package:flutter/material.dart';
import 'package:sorecover/Pages/authentification.dart';

void main() {
  runApp(const MyApp());
}

final backendBaseURI = Uri.parse("https://web-production-54ee.up.railway.app/api/");

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: Colors.teal),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: Colors.tealAccent),
          ),
        ),
      ),
      home: const Authentication(),
    );
  }
}