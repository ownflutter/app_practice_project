import 'package:app_practice_project/core/dio_helper/app_interceptor.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';

const TIMEOUT_TIME = 10000;
const String baseUrl = 'http://167.86.104.73:9091/api/v1';
class Dio_Helper {

  Dio createLoginInstance() {
    Dio dioInstance = Dio(
        BaseOptions(
          /* connectTimeout: const Duration(microseconds: TIMEOUT_TIME),
          receiveTimeout: const Duration(microseconds: TIMEOUT_TIME),*/
          baseUrl: baseUrl,
        ));
    dioInstance.interceptors.add(AppInterceptor());
    return dioInstance;
  }

  Dio postInstance() {
    Dio dioInstance = Dio(
        BaseOptions(
          baseUrl: baseUrl,
        ));
    dioInstance.interceptors.add(AppInterceptor());
    return dioInstance;
  }



  Future<RequestOptions> setHeaders(RequestOptions options) async {
    //add header to request option
    options.headers["Content-Type"] = "application/json";
    options.headers["Accept-Language"] = "en";
    return options;
  }

  Future<bool> isInternetAvailable() async {
    final connectivityResult = await (Connectivity().checkConnectivity());
    return  ((connectivityResult == ConnectivityResult.mobile || connectivityResult == ConnectivityResult.wifi));
  }

}
