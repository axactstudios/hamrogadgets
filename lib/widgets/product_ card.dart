import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hamrogadgets/Constants/colors.dart';
import 'package:hamrogadgets/Constants/styles.dart';
import 'package:hamrogadgets/Models/Product/product.dart';
import 'package:hamrogadgets/widgets/carousel.dart';
import 'package:hovering/hovering.dart';
import 'package:star_rating/star_rating.dart';

class ProductCard extends StatefulWidget {
  Product product;
  ProductCard({this.product});
  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return HoverWidget(
        child: Container(
          child: Center(
            child: Container(
              height: 354,
              width: 200,
              child: Card(
                elevation: 5,
                child: Column(
                  children: [
                    widget.product.top == false
                        ? Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Spacer(),
                                Icon(
                                  Icons.check_circle,
                                  color: Colors.blue,
                                  size: 10,
                                ),
                                Text(
                                  ' trending',
                                  style: Styles.customTextStyle(
                                      color: Colors.blue,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.normal,
                                      fontSize: 10),
                                )
                              ],
                            ),
                          )
                        : Container(),
                    Image.network(
                      widget.product.imageURLs[0],
                      height: 160,
                      width: 200,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 200,
                          child: Text(
                            widget.product.name,
                            textAlign: TextAlign.center,
                            style: Styles.productCardName,
                          )),
                    ),
                    StarRating(
                      mainAxisAlignment: MainAxisAlignment.center,
                      length: 5,
                      rating: widget.product.rating,
                      between: 5.0,
                      starSize: 13.0,
                      color: Colors.yellow,
                      // onRaitingTap: (rating) {
                      //   print('Clicked rating: $rating / $starLength');
                      //   setState(() {
                      //     _rating = rating;
                      //   });
                      // },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Rs. ${widget.product.mp}',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: AppColors.inactiveHeading,
                                    fontSize: 14,
                                    decoration: TextDecoration.lineThrough),
                              ),
                              // SizedBox(
                              //   height: 2,
                              // ),
                              Text(
                                'Rs. ${widget.product.disPrice}',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: AppColors.activeHeading,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                          Spacer(),
                          Container(
                            height: 45,
                            width: 45,
                            child: Center(
                              child: Text(
                                '${double.parse('${(widget.product.mp - widget.product.disPrice) / widget.product.mp * 100}').truncate()}%\nOFF',
                                textAlign: TextAlign.center,
                                style: Styles.customTextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.normal,
                                    fontSize: 11),
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                color: Colors.red.shade400),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        hoverChild: Container(
          child: Center(
            child: Container(
              height: 400,
              width: 200,
              child: Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      widget.product.top == false
                          ? Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Spacer(),
                                  Icon(
                                    Icons.check_circle,
                                    color: Colors.blue,
                                    size: 10,
                                  ),
                                  Text(
                                    ' trending',
                                    style: Styles.customTextStyle(
                                        color: Colors.blue,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.normal,
                                        fontSize: 10),
                                  )
                                ],
                              ),
                            )
                          : Container(),
                      Stack(children: [
                        ProductCardCarousel(
                          height: 160,
                          aspectRatio: 0.8,
                          imageURLs: widget.product.imageURLs,
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Container(
                                    height: 22,
                                    width: 22,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: AppColors.secondaryText,
                                            width: 2),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12))),
                                    child: Center(
                                      child: FaIcon(
                                        FontAwesomeIcons.heart,
                                        size: 10,
                                      ),
                                    )),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                    height: 22,
                                    width: 22,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: AppColors.secondaryText,
                                            width: 2),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12))),
                                    child: Center(
                                      child: FaIcon(
                                        FontAwesomeIcons.share,
                                        size: 10,
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        )
                      ]),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            width: 200,
                            child: Text(
                              widget.product.name,
                              textAlign: TextAlign.center,
                              style: Styles.productCardName,
                            )),
                      ),
                      StarRating(
                        mainAxisAlignment: MainAxisAlignment.center,
                        length: 5,
                        rating: widget.product.rating,
                        between: 5.0,
                        starSize: 13.0,
                        color: Colors.yellow,
                        // onRaitingTap: (rating) {
                        //   print('Clicked rating: $rating / $starLength');
                        //   setState(() {
                        //     _rating = rating;
                        //   });
                        // },
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Rs. ${widget.product.mp}',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: AppColors.inactiveHeading,
                                      fontSize: 14,
                                      decoration: TextDecoration.lineThrough),
                                ),
                                // SizedBox(
                                //   height: 2,
                                // ),
                                Text(
                                  'Rs. ${widget.product.disPrice}',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: AppColors.activeHeading,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                            Spacer(),
                            Container(
                              height: 45,
                              width: 45,
                              child: Center(
                                child: Text(
                                  '${double.parse('${(widget.product.mp - widget.product.disPrice) / widget.product.mp * 100}').truncate()}%\nOFF',
                                  textAlign: TextAlign.center,
                                  style: Styles.customTextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.normal,
                                      fontSize: 11),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                  color: Colors.red.shade400),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            border: Border.all(
                                color: AppColors.primaryColor, width: 2)),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.cartPlus,
                                size: 10,
                                color: AppColors.primaryColor,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                'Add To Cart',
                                style: Styles.customTextStyle(
                                    color: AppColors.primaryColor,
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        onHover: (PointerEnterEvent) {});
  }
}
