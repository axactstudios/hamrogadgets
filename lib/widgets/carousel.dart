import 'package:flutter/material.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';
import 'package:hamrogadgets/Models/Banner/full_length_banner.dart';

class FullLengthCarousel extends StatefulWidget {
  List<FullLengthBanner> banners;
  double height;
  double aspectRatio;
  FullLengthCarousel({this.banners, this.height, this.aspectRatio});
  @override
  _FullLengthCarouselState createState() => _FullLengthCarouselState();
}

class _FullLengthCarouselState extends State<FullLengthCarousel> {
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

class ProductCardCarousel extends StatefulWidget {
  List<String> imageURLs;
  double height;
  double aspectRatio;
  ProductCardCarousel({this.imageURLs, this.height, this.aspectRatio});
  @override
  _ProductCardCarouselState createState() => _ProductCardCarouselState();
}

class _ProductCardCarouselState extends State<ProductCardCarousel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: 200,
      // color: Colors.red,
      child: GFCarousel(
        autoPlayAnimationDuration: Duration(milliseconds: 500),
        autoPlay: true,
        viewportFraction: 1,
        aspectRatio: widget.aspectRatio,
        height: widget.height,
        items: widget.imageURLs.map(
          (url) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: widget.height,
                width: 200,
                // color: Colors.blue,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  child: Image.network(
                    url,
                    fit: BoxFit.cover,
                    height: widget.height,
                    width: 200,
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
