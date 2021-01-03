import 'package:flutter/material.dart';
import 'package:hamrogadgets/Constants/styles.dart';
import 'package:hamrogadgets/Models/Product/product.dart';
import 'package:hamrogadgets/widgets/product_%20card.dart';

class ProductsLine extends StatefulWidget {
  List<Product> products;
  String title;
  ProductsLine({this.products, this.title});
  @override
  _ProductsLineState createState() => _ProductsLineState();
}

class _ProductsLineState extends State<ProductsLine> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: Styles.customTextStyle(
              fontSize: 21,
              color: Colors.black.withOpacity(0.7),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 400,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.products.length,
              itemBuilder: (context, i) {
                return ProductCard(
                  product: widget.products[i],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
