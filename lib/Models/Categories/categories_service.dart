import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hamrogadgets/Models/Categories/categories_notifier.dart';
import 'package:hamrogadgets/Models/Categories/categories.dart';


getCategories(CategoriesNotifier categoriesNotifier) async {
  QuerySnapshot snapshot =
      await FirebaseFirestore.instance.collection("Categories").get();

  List<Categories> _categoriesList = [];

  snapshot.docs.forEach((document) {
    Categories categories = Categories.fromMap(document.data());
    _categoriesList.add(categories);
  });

  categoriesNotifier.categoriesList = _categoriesList;
  print(_categoriesList);
}
