import 'package:flutter/material.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';
import 'package:hamrogadgets/BannerModel/full_length_banner.dart';

class Carousel extends StatefulWidget {
  List<FullLengthBanner> banners;
  double height;
  double aspectRatio;
  Carousel({this.banners, this.height, this.aspectRatio});
  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: double.infinity,
      // color: Colors.red,
      child: GFCarousel(
        autoPlay: true,
        viewportFraction: 1,
        aspectRatio: widget.aspectRatio,
        height: widget.height,
        items: widget.banners.map(
          (banner) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 400,
                width: 1500,
                // color: Colors.blue,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  child: Image.network(
                    banner.imageURL,
                    fit: BoxFit.cover,
                    height: 400,
                    width: 1200,
                  ),
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
