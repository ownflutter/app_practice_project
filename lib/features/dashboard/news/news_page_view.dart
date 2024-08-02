import 'package:app_practice_project/features/dashboard/news/news_controller.dart';
import  'package:flutter/material.dart';
import 'package:get/get.dart';

class NewsPage extends GetView<NewsController> {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Text("NewsPage")),
      ),
    );
  }
}


