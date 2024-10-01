import 'package:flutter/material.dart';

import 'package:newsapp/models/article_model.dart';

class NewsTile extends StatelessWidget {
  NewsTile({
    super.key,
    required this.articleModel,
  });
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image:
                        NetworkImage(articleModel.image ?? 
                        "assets/one.jpg")
                        )),
          )??CircularProgressIndicator(),
          SizedBox(
            height: 10,
          ),
          Text(
            articleModel.title ?? "There is no title",
            style: TextStyle(
              height: 1,
              fontSize: 28, fontWeight: FontWeight.w500),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            articleModel.subTitle ?? "",
            style: TextStyle(fontSize: 18),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
