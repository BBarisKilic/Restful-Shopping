import 'package:flutter/material.dart';
import 'package:restful/screens/main_screen.dart';

void main() {
  runApp(Restful());
}

class Restful extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}
