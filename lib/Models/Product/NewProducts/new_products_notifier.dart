import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:hamrogadgets/Models/Product/product.dart';

class NewProductsNotifier with ChangeNotifier {
  List<Product> _newProductsList = [];
  Product _newProduct;

  UnmodifiableListView<Product> get newProductsList =>
      UnmodifiableListView(_newProductsList);

  Product get newProducts => _newProduct;

  set newProductsList(List<Product> newProductsList) {
    _newProductsList = newProductsList;
    notifyListeners();
  }

  set newProducts(Product newProducts) {
    _newProduct = newProducts;
    notifyListeners();
  }
}
