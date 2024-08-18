import 'package:flutter/material.dart';
import 'package:menuapp/models/category.dart';
import 'package:menuapp/widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  final List<Category> categories;
  CategoriesScreen({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue,
          title: Text("Ovqatlar Menyusi"),
        ),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: GridView(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200, //eni
              childAspectRatio: 3 / 2, // qanday nisbatta bulishi
              crossAxisSpacing: 20, //gorizontal margin
              mainAxisSpacing: 20, //vertical margin
            ),
            children: categories
                .map((e) => CategoryItem(
                      category: e,
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
