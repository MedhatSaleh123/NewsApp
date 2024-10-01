import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/widgets/category_list_view.dart';
import 'package:newsapp/widgets/news_list_view.dart';
import 'package:newsapp/widgets/news_list_view_builder.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.teal,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "News",
              style: TextStyle(color: Colors.black,
               fontSize: 25,fontWeight: FontWeight.bold
               
               ),
            ),
            Text(
              "Cloud",
              style: TextStyle(color: Colors.orange,
          fontSize: 25,fontWeight: FontWeight.bold
               ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CategoriesListView()),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            NewsListViewBuilder(
              category: "general",
            )
          ],
        ),
      ),
    );
  }
}
