import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 20;
  final String name = "Payal";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Catalog App"),
      ),
      body: Center(
        child: Container(
            child: Text(
          "Welcome to my App!",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
      drawer: Drawer(),
    );
  }
}
