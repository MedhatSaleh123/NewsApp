import 'package:flutter/material.dart';
import 'package:newsapp/models/category_model.dart';
import 'package:newsapp/widgets/category_item.dart';

class CategoriesListView extends StatelessWidget {
  CategoriesListView({
    super.key,
  });
  final List<CategoryModel> categories = [
    CategoryModel(image: "assets/bussiness.jpg", categoryName: "Business"),
    CategoryModel(image: "assets/sports.jpg", categoryName: "Sports"),
    CategoryModel(image: "assets/health.jpg", categoryName: "Health"),
    CategoryModel(image: "assets/bussiness.jpg", categoryName: "General"),
    CategoryModel(image: "assets/enter.jpg", categoryName: "Entertainment"),
    CategoryModel(image: "assets/science.jpg", categoryName: "Science"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
