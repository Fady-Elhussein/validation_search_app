import 'package:flutter/material.dart';
import 'package:validation_search_app/search_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: true,
      home: SearchPage(),
    );
  }
}