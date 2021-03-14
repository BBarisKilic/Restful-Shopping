import 'package:flutter/material.dart';
import 'package:restful_shopping/screens/main_screen.dart';

void main() {
  runApp(RestfulShopping());
}

class RestfulShopping extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
