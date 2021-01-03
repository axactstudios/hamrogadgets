class Testimonial {
  String userName;
  String userID;
  String testimonial;

  Testimonial.fromMap(Map<String, dynamic> data) {
    userName = data["userName"];
    userID = data["userID"];
    testimonial = data["testimonial"];
  }
}
