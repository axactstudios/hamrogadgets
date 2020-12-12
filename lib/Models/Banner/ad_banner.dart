class AdBanner {
  String imageURL;
  String onClick;
  String altText;

  AdBanner.fromMap(Map<String, dynamic> data) {
    imageURL = data["imageURL"];
    onClick = data["onClick"];
    altText = data["altText"];
  }
}
