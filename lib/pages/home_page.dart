// ignore_for_file: deprecated_member_use
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_codepur/books/cart.dart';
import 'package:flutter_codepur/books/catalog.dart';
import 'package:flutter_codepur/core/store.dart';
import '../utils/routes.dart';
import '../widgets/home_widgets/catalog_header.dart';
import '../widgets/home_widgets/catalog_list.dart';
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
    await Future.delayed(const Duration(seconds: 2));
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
    final _cart = (VxState.store as MyStore).cart;
    return Scaffold(
        backgroundColor: context.canvasColor,
        floatingActionButton: VxBuilder(
          mutations: {AddMutation, RemoveMutation},
          builder: (context, status, dynamic) => FloatingActionButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, MyRoutes.cartRoute),
                  backgroundColor: context.theme.buttonColor,
                  child: const Icon(CupertinoIcons.cart, color: Colors.white))
              .badge(
                  color: Vx.red500,
                  size: 22,
                  count: _cart.items.length,
                  textStyle: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
        ),
        body: SafeArea(
          child: Container(
            padding: Vx.m32,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const CatalogHeader(),
              if (CatalogBook.items != null && CatalogBook.items.isNotEmpty)
                const CatalogList().py16().expand()
              else
                const CircularProgressIndicator().centered().py16().expand(),
            ]),
          ),
        ));
  }
}
