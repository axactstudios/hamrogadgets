import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:hamrogadgets/Models/Categories/categories.dart';
import 'package:hamrogadgets/Models/Testimonials/testimonial.dart';

class TestimonialNotifier with ChangeNotifier {
  List<Testimonial> _testimonialsList = [];
  Testimonial _testimonial;

  UnmodifiableListView<Testimonial> get testimonialsList =>
      UnmodifiableListView(_testimonialsList);

  Testimonial get testimonial => _testimonial;

  set testimonialsList(List<Testimonial> testimonialsList) {
    _testimonialsList = testimonialsList;
    notifyListeners();
  }

  set testimonial(Testimonial testimonial) {
    _testimonial = testimonial;
    notifyListeners();
  }
}
