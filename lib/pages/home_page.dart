import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_codepur/books/catalog.dart';
import 'package:flutter_codepur/widgets/themes.dart';
import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';
import 'dart:convert';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 20;
  final String name = "Payal";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogBook.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    //final dummyList = List.generate(20, (index) => CatalogBook.items[0]);
    return Scaffold(
        body: SafeArea(
      child: Container(
        padding: Vx.m32,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          "Novelflix".text.xl5.bold.color(MyTheme.darkBlueishColor).make(),
          "Trending Books".text.xl2.make()
        ]),
      ),
    ));
  }
}
