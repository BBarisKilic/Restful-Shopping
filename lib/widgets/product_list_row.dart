import 'package:flutter/material.dart';

import '../models/product.dart';

class ProductListRow extends StatelessWidget {
  Product product;

  ProductListRow(this.product);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        child: Column(
          children: [
            Container(
              child: Image.network(
                  "https://images.pexels.com/photos/1300972/pexels-photo-1300972.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
              height: 130,
              width: MediaQuery.of(context).size.width * 0.5,
            ),
            Text(product.productName),
            SizedBox(
              height: 6,
            ),
            Text(
              product.unitPrice.toString() + " TL",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
