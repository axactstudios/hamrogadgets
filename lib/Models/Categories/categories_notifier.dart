import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:hamrogadgets/Models/Categories/categories.dart';

class CategoriesNotifier with ChangeNotifier {
  List<Categories> _categoriesList = [];
  Categories _categories;

  UnmodifiableListView<Categories> get categoriesList =>
      UnmodifiableListView(_categoriesList);

  Categories get categories => _categories;

  set categoriesList(List<Categories> categoriesList) {
    _categoriesList = categoriesList;
    notifyListeners();
  }

  set categories(Categories categories) {
    _categories = categories;
    notifyListeners();
  }
}
