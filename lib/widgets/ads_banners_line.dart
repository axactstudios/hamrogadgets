import 'package:flutter/material.dart';
import 'package:hamrogadgets/Models/Banner/ad_banner.dart';

class AdBannersLine extends StatefulWidget {
  List<AdBanner> banners;
  AdBannersLine({this.banners});
  @override
  _AdBannersLineState createState() => _AdBannersLineState();
}

class _AdBannersLineState extends State<AdBannersLine> {
  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.of(context).size.width);
    return MediaQuery.of(context).size.width > 1200
        ? Container(
            height: 250,
            // color: Colors.red,
            child: Row(
              children: [
                Expanded(
                  child: Image.network(
                    widget.banners[0].imageURL,
                  ),
                ),
                Expanded(
                  child: Image.network(
                    widget.banners[1].imageURL,
                  ),
                ),
                Expanded(
                  child: Image.network(
                    widget.banners[2].imageURL,
                  ),
                )
              ],
            ),
          )
        : Container(
            height: 580,
            // color: Colors.red,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Image.network(
                        widget.banners[0].imageURL,
                      ),
                    ),
                    Expanded(
                      child: Image.network(
                        widget.banners[1].imageURL,
                      ),
                    ),
                  ],
                ),
                Image.network(
                  widget.banners[2].imageURL,
                  height: 250,
                ),
              ],
            ),
          );
  }
}
