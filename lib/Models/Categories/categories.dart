class Categories {
  String catName;
  String description;
  bool top;

  Categories.fromMap(Map<String, dynamic> data) {
    catName = data["catName"];
    description = data["description"];
    top = data["top"];
  }
}
