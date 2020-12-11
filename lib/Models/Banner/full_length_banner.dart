class FullLengthBanner {
  String imageURL;
  String onClick;
  String altText;

  FullLengthBanner.fromMap(Map<String, dynamic> data) {
    imageURL = data["imageURL"];
    onClick = data["onClick"];
    altText = data["altText"];
  }
}
