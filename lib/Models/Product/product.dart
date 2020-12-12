class Product {
  String name, description, status, docID;
  List<String> imageURLs, colors, detailsGraphicURLs;
  double mp, disPrice, quantity, noOfPurchases, rating;
  Map specs, details;
  bool top, newProduct;

  Product.fromMap(Map<String, dynamic> data) {
    name = data["name"];
    description = data["description"];
    status = data["status"];
    docID = data["docID"];
    rating = data["rating"];

    imageURLs = List.from(data["imageURLs"]);
    colors = List.from(data["colors"]);
    detailsGraphicURLs = List.from(data["detailsGraphicURLs"]);
    mp = data["mp"];
    disPrice = data["disPrice"];
    quantity = data["quantity"];
    noOfPurchases = data["noOfPurchases"];
    specs = data["specs"];
    details = data["details"];
    top = data["top"];
    newProduct = data["newProduct"];
  }
}
