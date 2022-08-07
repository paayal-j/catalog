import 'package:flutter/material.dart';
import 'package:flutter_codepur/books/catalog.dart';

class CartModel {
  //Catalog Field
  late CatalogBook _catalog;

//coloection of IDs - store Ids of each item
  final List<int> _itemsIds = [];
//get catalog
  CatalogBook get catalog => _catalog;
  set catalog(CatalogBook newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

//Get items in the cart
  List<Item> get items => _itemsIds.map((id) => catalog.getById(id)).toList();

  //get total price

  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

//add item in cart
  void add(Item item) {
    _itemsIds.add(item.id);
  }

//remove item from cart
  void remove(Item item) {
    _itemsIds.remove(item.id);
  }
}
