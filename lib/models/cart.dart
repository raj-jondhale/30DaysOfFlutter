import 'package:my_app/core/store.dart';
import 'package:velocity_x/velocity_x.dart';

import 'catalog.dart';

class CartModel {
  // static final cartModel = CartModel._internal();

  // CartModel._internal();
  // factory CartModel() => cartModel;
  //catalog field
  late CatalogModel _catalog;

  //collection of ID's store ids of each item

  final List<int> _itemIds = [];

  //get catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  //get items in the cartt
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  //get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  //add item
  void add(Item item) {
    _itemIds.add(item.id);
  }

  //remove item
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}

class AddMutation extends VxMutation<MyStore> {
  final int item;

  AddMutation(this.item);
  @override
  perform() {
    // TODO: implement perform
    store!.cart._itemIds.add(item);
  }
}
