import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';
import 'package:hamrogadgets/Constants/colors.dart';
import 'package:hamrogadgets/Constants/styles.dart';
import 'package:hamrogadgets/Models/Testimonials/testimonial.dart';

class TestimonialsCarousel extends StatefulWidget {
  List<Testimonial> testimonials;
  double height;
  double aspectRatio;
  TestimonialsCarousel({this.testimonials, this.height, this.aspectRatio});
  @override
  _TestimonialsCarouselState createState() => _TestimonialsCarouselState();
}

class _TestimonialsCarouselState extends State<TestimonialsCarousel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: 900,
      // color: Colors.red,
      child: GFCarousel(
        autoPlay: true,
        viewportFraction: 1,
        aspectRatio: widget.aspectRatio,
        height: widget.height,
        items: widget.testimonials.map(
          (testimonial) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 400,
                width: 900,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(0xFFFFF2E6),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        height: 200,
                        width: 800,
                        child: Center(child: Text(testimonial.testimonial))),
                    Container(
                        width: 800,
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25)),
                                  border: Border.all(
                                      color: AppColors.primaryColor, width: 2)),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  'Add a Review',
                                  style: Styles.customTextStyle(
                                      color: AppColors.primaryColor,
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            )
                          ],
                        ))
                  ],
                ),
              ),
            );
          },
        ).toList(),
        onPageChanged: (index) {
          setState(() {
            index;
          });
        },
      ),
    );
  }
}
