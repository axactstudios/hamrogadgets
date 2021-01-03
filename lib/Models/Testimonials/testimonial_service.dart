import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hamrogadgets/Models/Testimonials/testimonial.dart';
import 'package:hamrogadgets/Models/Testimonials/testimonial_notifier.dart';

getTestimonials(TestimonialNotifier testimonialNotifier) async {
  QuerySnapshot snapshot =
      await FirebaseFirestore.instance.collection("Testimonials").get();

  List<Testimonial> _testimonialsList = [];

  snapshot.docs.forEach((document) {
    Testimonial testimonial = Testimonial.fromMap(document.data());
    _testimonialsList.add(testimonial);
  });

  testimonialNotifier.testimonialsList = _testimonialsList;
  print(_testimonialsList);
}
