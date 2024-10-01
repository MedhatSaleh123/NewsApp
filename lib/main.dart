import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/services/news_services.dart';
import 'package:newsapp/veiws/home_page.dart';

void main() {
  runApp(NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
