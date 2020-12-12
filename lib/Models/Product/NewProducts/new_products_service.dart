import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hamrogadgets/Models/Product/NewProducts/new_products_notifier.dart';
import 'package:hamrogadgets/Models/Product/product.dart';

getNewProducts(NewProductsNotifier newProductsNotifier) async {
  QuerySnapshot snapshot =
      await FirebaseFirestore.instance.collection("Products").get();

  List<Product> _newProductsList = [];

  snapshot.docs.forEach((document) {
    if (document.data()['newProduct'] == true) {
      Product newProduct = Product.fromMap(document.data());
      _newProductsList.add(newProduct);
    }
  });

  newProductsNotifier.newProductsList = _newProductsList;
  print(_newProductsList);
}
