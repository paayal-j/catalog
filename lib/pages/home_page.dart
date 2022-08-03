import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int days = 20;
  final String name = "Payal";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        // elevation: 0.0,
        // iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Book Reseller",
          //style: TextStyle(color: Colors.black),
        ),
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
      drawer: MyDrawer(),
    );
  }
}
