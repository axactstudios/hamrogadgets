import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hamrogadgets/Models/Product/NewProducts/new_products_notifier.dart';
import 'package:hamrogadgets/Models/Product/TrendingProducts/trending_products_notifier.dart';
import 'package:hamrogadgets/Models/Product/product.dart';

getTrendingProducts(TrendingProductsNotifier trendingProductsNotifier) async {
  QuerySnapshot snapshot =
      await FirebaseFirestore.instance.collection("Products").get();

  List<Product> _trendingProductsList = [];

  snapshot.docs.forEach((document) {
    if (document.data()['top'] == true) {
      Product trendingProduct = Product.fromMap(document.data());
      _trendingProductsList.add(trendingProduct);
    }
  });

  trendingProductsNotifier.trendingProductsList = _trendingProductsList;
  print(_trendingProductsList);
}
