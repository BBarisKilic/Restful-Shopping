import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:restful_shopping/models/category.dart';
import 'package:restful_shopping/data.api/category_api.dart';

class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainScreenState();
  }
}

class _MainScreenState extends State {
  List<Category> categories = List<Category>.empty();
  List<Widget> categoryWidgets = List<Widget>.empty();

  @override
  void initState() {
    super.initState();
    getCategoriesFromApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Restful Shopping",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: categoryWidgets,
              ),
            )
          ],
        ),
      ),
    );
  }

  void getCategoriesFromApi() {
    CategoryApi.getCategories().then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        this.categories = list.map((category) => Category.fromJSON(category));
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
    return TextButton(
      onPressed: () {},
      child: Text(
        category.categoryName,
        style: TextStyle(color: Colors.blueGrey),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.lightGreenAccent),
      ),
    );
  }
}
