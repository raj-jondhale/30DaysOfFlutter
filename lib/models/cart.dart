import 'catalog.dart';

class CartModel {
  // static final cartModel = CartModel._internal();

  // CartModel._internal();
  // factory CartModel() => cartModel;
  //catalog field
  late CatalogModel _catalog;

  //collection of ID's store ids of each item

  final List<int> _ItemIds = [];

  //get catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  //get items in the cartt
  List<Item> get items => _ItemIds.map((id) => _catalog.getById(id)).toList();

  //get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  //add item
  void add(Item item) {
    _ItemIds.add(item.id);
  }

  //remove item
  void remove(Item item) {
    _ItemIds.remove(item.id);
  }
}
