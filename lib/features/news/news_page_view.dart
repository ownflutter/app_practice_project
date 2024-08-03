import 'package:app_practice_project/features/news/news_controller.dart';
import 'package:app_practice_project/utils/colors.dart';
import  'package:flutter/material.dart';
import 'package:get/get.dart';

class NewsPage extends GetView<NewsController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: OurAppColor.colorC,
        title: const Text(
          'News Page',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(
          color: Colors.white, // Set the drawer icon color to white
        ),
      ),
      body: Container(
        child: Center(child:  Obx(() =>Text(controller.man2.value))),
      ),
    );
  }
}


