import 'package:flutter/material.dart';

import '../models/product.dart';

class ProductListRow extends StatelessWidget {
  Product product;

  ProductListRow(this.product);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        color: Color(0xffc09074),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.network(
              "https://images.pexels.com/photos/1300972/pexels-photo-1300972.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
              width: MediaQuery.of(context).size.width * 0.5,
              fit: BoxFit.fill,
            ),
            Text(
              product.productName,
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
            Text(
              product.unitPrice.toString() + " TL",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            SizedBox(
              height: 1,
            )
          ],
        ),
      ),
    );
  }
}
