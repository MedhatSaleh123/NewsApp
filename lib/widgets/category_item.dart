import 'package:flutter/material.dart';
import 'package:newsapp/models/category_model.dart';
import 'package:newsapp/veiws/category_page.dart';

class CategoryCard extends StatelessWidget {
  CategoryCard({
    super.key,
    required this.category,
  });
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(
                category: category.categoryName,
              );
            },
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(right: 15),
        height: 110,
        width: 180,
        child: Center(
          child: Text(
            category.categoryName,
            style: TextStyle(
                fontSize: 22,
                 color: Colors.white,
                  fontWeight: FontWeight.bold),
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage(category.image)),
          //color: Colors.orange,
        ),
      ),
    );
  }
}
