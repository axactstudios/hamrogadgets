import 'package:flutter/material.dart';
import 'package:hamrogadgets/Models/Banner/ad_banner.dart';

class AdBannersLine extends StatefulWidget {
  AdBanner banner1, banner2, banner3;
  AdBannersLine({this.banner1, this.banner2, this.banner3});
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
                    widget.banner1.imageURL,
                  ),
                ),
                Expanded(
                  child: Image.network(
                    widget.banner2.imageURL,
                  ),
                ),
                Expanded(
                  child: Image.network(
                    widget.banner3.imageURL,
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
                        widget.banner1.imageURL,
                      ),
                    ),
                    Expanded(
                      child: Image.network(
                        widget.banner2.imageURL,
                      ),
                    ),
                  ],
                ),
                Image.network(
                  widget.banner3.imageURL,
                  height: 250,
                ),
              ],
            ),
          );
  }
}
