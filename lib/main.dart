import 'package:app_practice_project/features/dashboard/dashboard_view.dart';
import 'package:app_practice_project/features/homepage/homepage_controller.dart';
import 'package:app_practice_project/core/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/app_binding.dart';

void main() async {
  Get.lazyPut<HomeController>(() => HomeController());
  Get.put(HomeController());
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: AppBindings(),
      getPages: routes,
      initialRoute:AppRoutes.Dashboard_PAGE ,
      //home: Dashboard(),
    );
  }
}











