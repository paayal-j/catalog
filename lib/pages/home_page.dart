import 'package:flutter/material.dart';
import 'package:flutter_codepur/books/catalog.dart';
import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  final int days = 20;
  final String name = "Payal";
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogBook.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Book Reseller",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            itemCount: dummyList.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: dummyList[index],
              );
            }),
      ),
      drawer: MyDrawer(),
    );
  }
}
