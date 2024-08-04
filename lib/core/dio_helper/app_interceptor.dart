import 'dart:developer';

import 'package:app_practice_project/core/dio_helper/dio_helper.dart';
import 'package:dio/dio.dart';

class AppInterceptor extends QueuedInterceptorsWrapper{

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    log("---> API URL (AppInterceptor): ${options.uri}");
    log("---> REQUEST BODY (AppInterceptor): ${options.data}");

    //provide necessary headers
    RequestOptions requestOption = await Dio_Helper().setHeaders(options);
    log("---> REQUEST HEADER(AppInterceptor): ${requestOption.headers}");

    if(await Dio_Helper().isInternetAvailable()){
      //has internet
      super.onRequest(requestOption, handler);
    }else{
      //no internet
      handler.reject(DioError(requestOptions: options,error: "You are offline!"));
    }

  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log("<--- API URL(AppInterceptor): ${response.realUri}");
    log("<--- RESPONSE BODY(AppInterceptor): ${response.data}");
    super.onResponse(response, handler);
  }


  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    log("-^-^-> ERROR(status)(AppInterceptor): ${err.response?.statusCode}");
    log("-^-^-> ERROR(type)(AppInterceptor): ${err.type}");
    log("-^-^-> ERROR(message)(AppInterceptor): ${err.message}");
    log("-^-^-> ERROR(response)(AppInterceptor): ${err.response}");
    super.onError(err, handler);
  }
}