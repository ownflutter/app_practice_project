import 'package:app_practice_project/features/list/list_activeties.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(primaryColor: Colors.black),
      darkTheme: ThemeData(primarySwatch:Colors.blue),
      debugShowCheckedModeBanner: false,
      home: Learning_page(),
    );
  }
}








