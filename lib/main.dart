import 'package:flutter/material.dart';
import 'package:giao_dien05/page/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

