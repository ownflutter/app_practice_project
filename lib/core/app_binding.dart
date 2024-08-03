
import 'package:app_practice_project/core/dio_helper/app_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import 'dio_helper/dio_helper.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Dio>(() {
      BaseOptions baseOptions = BaseOptions(
        connectTimeout: Duration(microseconds: TIMEOUT_TIME),
        receiveTimeout: Duration(microseconds: TIMEOUT_TIME),
        responseType: ResponseType.plain,
      );
      var dio = Dio(baseOptions);
      dio.interceptors.add(AppInterceptor());
      return dio;
    });
  }
}
