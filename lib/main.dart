import 'package:flutter/material.dart';
import 'package:flutter_codepur/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 20;
    String name = "Payal";
    return MaterialApp(
      home: HomePage(),
    );
  }
}
