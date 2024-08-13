import 'package:app_practice_project/features/list/list_activeties.dart';
import 'package:app_practice_project/features/loccalization/language.dart';
import 'package:app_practice_project/features/loccalization/localization_page.dart';
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
      debugShowCheckedModeBanner: false,
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      translations: Languages(),
      home: Learning_page(),
    );
  }
}











