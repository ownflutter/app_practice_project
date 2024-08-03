import 'package:app_practice_project/features/dashboard/dashboard_binding.dart';
import 'package:app_practice_project/features/dashboard/dashboard_view.dart';
import 'package:app_practice_project/features/news/news_page_binding.dart';
import 'package:app_practice_project/features/news/news_page_view.dart';
import 'package:app_practice_project/features/profile/prodile_binding.dart';
import 'package:app_practice_project/features/profile/profile_view.dart';
import 'package:get/get.dart';

final List<GetPage> routes =[
 GetPage(name: AppRoutes.Dashboard_PAGE, page: ()=> Dashboard(),binding: DashboardBinding()),
  GetPage(name: AppRoutes.News_PAGE, page: ()=> NewsPage(),binding: NewsPageBinding()),
  GetPage(name: AppRoutes.Profile, page: ()=> ProfilePage(),binding: ProfileBinding()),
  GetPage(name: AppRoutes.Home, page: ()=> ProfilePage(),binding: ProfileBinding()),
];

class AppRoutes{
  AppRoutes._();
  static const String Dashboard_PAGE = "/";
  static const String Home = "/Dashboard/Home";
  static const String News_PAGE = "/Dasboard/Newspage";
  static const String Profile = "/Dasboard/Profile";

}