import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:restful_shopping/models/category.dart';
import 'package:restful_shopping/data.api/category_api.dart';
import 'package:restful_shopping/widgets/product_list_widget.dart';

import '../data.api/product_api.dart';
import '../models/product.dart';

class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainScreenState();
  }
}

class _MainScreenState extends State {
  List<Category> categories = List<Category>();
  List<Widget> categoryWidgets = List<Widget>();
  List<Product> products = List<Product>();

  @override
  void initState() {
    super.initState();
    getCategoriesFromApi();
    getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Restful Shopping",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xff56733C),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        color: Color(0xffC6DB9F),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: categoryWidgets,
              ),
            ),
            ProductListWidget(products),
          ],
        ),
      ),
    );
  }

  void getCategoriesFromApi() {
    CategoryApi.getCategories().then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        this.categories =
            list.map((category) => Category.fromJSON(category)).toList();
        getCategoryWidgets();
      });
    });
  }

  void getCategoryWidgets() {
    for (int i = 0; i < categories.length; i++) {
      categoryWidgets.add(getCategoryWidget(categories[i]));
    }
  }

  Widget getCategoryWidget(Category category) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextButton(
        onPressed: () {
          getProductsByCategoryId(category);
        },
        child: Text(
          category.categoryName,
          style: TextStyle(
            color: Color(0xff784742),
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.lightGreenAccent),
        ),
      ),
    );
  }

  void getProductsByCategoryId(Category category) {
    ProductApi.getProductsByCategoryId(category.id).then((response) {
      setState(() {
        Iterable list = json.decode((response.body));
        this.products =
            list.map((product) => Product.fromJSON(product)).toList();
      });
    });
  }

  void getProducts() {
    ProductApi.getProducts().then((response) {
      setState(() {
        Iterable list = json.decode((response.body));
        this.products =
            list.map((product) => Product.fromJSON(product)).toList();
      });
    });
  }
}
