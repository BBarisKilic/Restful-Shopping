import 'package:flutter/material.dart';
import 'package:http_demo/screens/main_screen.dart';

void main() {
  runApp(HttpDemoApp());
}

class HttpDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}
