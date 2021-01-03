import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:hamrogadgets/Models/Product/product.dart';

class TrendingProductsNotifier with ChangeNotifier {
  List<Product> _trendingProductsList = [];
  Product _trendingProduct;

  UnmodifiableListView<Product> get trendingProductsList =>
      UnmodifiableListView(_trendingProductsList);

  Product get trendingProducts => _trendingProduct;

  set trendingProductsList(List<Product> trendingProductsList) {
    _trendingProductsList = trendingProductsList;
    notifyListeners();
  }

  set trendingProducts(Product trendingProducts) {
    _trendingProduct = trendingProducts;
    notifyListeners();
  }
}
