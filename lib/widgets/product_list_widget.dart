import 'package:flutter/material.dart';
import 'package:restful_shopping/widgets/product_list_row.dart';

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
          height: MediaQuery.of(context).size.height * 0.75,
          child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(
              widget.products.length,
              (index) {
                return ProductListRow(widget.products[index]);
              },
            ),
          ),
        ),
      ],
    );
  }
}
