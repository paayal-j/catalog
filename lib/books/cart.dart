import 'package:flutter_codepur/books/catalog.dart';
import 'package:flutter_codepur/core/store.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel {
  //Catalog Field
  late CatalogBook _catalog;
//coloection of IDs - store Ids of each item
  final List<int> _itemsIds = [];
//get catalog
  CatalogBook get catalog => _catalog;
  set catalog(CatalogBook newCatalog) {
    _catalog = newCatalog;
  }

//Get items in the cart
  List<Item> get items => _itemsIds.map((id) => catalog.getById(id)).toList();
  //get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);
}

class AddMutation extends VxMutation<MyStore> {
  final Item item;
  AddMutation(this.item);
  @override
  perform() {
    store?.cart._itemsIds.add(item.id);
  }
}

class RemoveMutation extends VxMutation<MyStore> {
  final Item item;
  RemoveMutation(this.item);
  @override
  perform() {
    store?.cart._itemsIds.remove(item.id);
  }
}
