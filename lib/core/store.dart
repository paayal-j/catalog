// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_codepur/books/cart.dart';
import 'package:flutter_codepur/books/catalog.dart';

class MyStore extends VxStore {
  late CatalogBook catalog;
  late CartModel cart;
  MyStore() {
    catalog = CatalogBook();
    cart = CartModel();
    cart.catalog = catalog;
  }
}
