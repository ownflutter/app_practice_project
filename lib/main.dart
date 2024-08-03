import 'package:app_practice_project/features/dashboard/dashboard_view.dart';
import 'package:app_practice_project/features/homepage/homepage_controller.dart';
import 'package:app_practice_project/core/routes.dart';
import 'package:app_practice_project/features/news/news_controller.dart';
import 'package:app_practice_project/features/news/news_page_binding.dart';
import 'package:app_practice_project/features/profile/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'core/app_binding.dart';

void main() async {

   Get.put(Dashboard());
   Get.put(HomeController());
   Get.put(NewsController());
   Get.put(ProfileController());

  await initApp();
  runApp(const MyApp());
}
Future<void> initApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
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
    );
  }
}











