import 'package:app_practice_project/features/news/news_controller.dart';
import 'package:get/get.dart';

class NewsPageBinding extends Bindings{
  @override
  void dependencies() {
 Get.lazyPut(() => NewsController());
  }

}