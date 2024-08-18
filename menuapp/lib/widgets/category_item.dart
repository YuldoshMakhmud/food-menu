import 'package:flutter/material.dart';
import 'package:menuapp/models/category.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  CategoryItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Stack(
        children: [
          Container(
            child: Image.asset(
              category.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.5),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              category.title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
