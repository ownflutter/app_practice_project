import 'package:app_practice_project/features/dashboard/dashboard_binding.dart';
import 'package:app_practice_project/features/dashboard/dashboard_view.dart';
import 'package:app_practice_project/features/news/news_page_binding.dart';
import 'package:app_practice_project/features/news/news_page_view.dart';
import 'package:get/get.dart';

final List<GetPage> routes =[
 GetPage(name: AppRoutes.Dashboard_PAGE, page: ()=> Dashboard(),binding: DashboardBinding()),
  GetPage(name: AppRoutes.News_PAGE, page: ()=> NewsPage(),binding: NewsPageBinding()),
];

class AppRoutes{
  AppRoutes._();
  static const String Dashboard_PAGE = "/";
  static const String News_PAGE = "/Dasboard/newspage";

}