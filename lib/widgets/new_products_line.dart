import 'package:flutter/material.dart';
import 'package:hamrogadgets/Constants/styles.dart';
import 'package:hamrogadgets/Models/Product/product.dart';
import 'package:hamrogadgets/widgets/product_%20card.dart';

class NewProductsLine extends StatefulWidget {
  List<Product> newProducts;
  NewProductsLine({this.newProducts});
  @override
  _NewProductsLineState createState() => _NewProductsLineState();
}

class _NewProductsLineState extends State<NewProductsLine> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'New Products',
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
              itemCount: widget.newProducts.length,
              itemBuilder: (context, i) {
                return ProductCard(
                  product: widget.newProducts[i],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
