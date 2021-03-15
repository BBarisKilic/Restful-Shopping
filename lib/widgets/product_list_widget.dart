import 'package:flutter/material.dart';

import '../models/product.dart';

class ProductListWidget extends StatefulWidget {
  List<Product> products = List<Product>();

  ProductListWidget(this.products);

  @override
  State<StatefulWidget> createState() {
    return _ProductListWidgetState();
  }
}

class _ProductListWidgetState extends State<ProductListWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 500,
          child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(
              widget.products.length,
              (index) {
                return ProductListRowWidget(widget.products[index]);
              },
            ),
          ),
        ),
      ],
    );
  }
}
