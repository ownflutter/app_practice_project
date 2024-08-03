import 'package:app_practice_project/features/news/news_controller.dart';
import  'package:flutter/material.dart';
import 'package:get/get.dart';

class NewsPage extends GetView<NewsController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Text(controller.man2.value)),
      ),
    );
  }
}


