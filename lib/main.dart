import 'package:flutter/material.dart';
import 'package:tuko/screens/Home_page.dart';

void main() {
  runApp(toku());
}

class toku extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: homePage());
  }
}
