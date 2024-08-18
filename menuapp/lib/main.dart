import 'package:flutter/material.dart';
import 'package:menuapp/models/category.dart';
import 'package:menuapp/screen/categories_screen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _categoryModel = Categories();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.indigo),
      home: CategoriesScreen(categories: _categoryModel.list),
    );
  }
}
