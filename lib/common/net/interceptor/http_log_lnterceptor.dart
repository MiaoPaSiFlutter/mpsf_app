
import 'dart:convert';

import 'package:dio/dio.dart';
/*
HttpLogInterceptor:是对请求过程中的参数和返回值参数进行打印：
*/
class HttpLogInterceptor extends Interceptor{
  @override
  Future onRequest(RequestOptions options) {
    print("\n ---------Start Http Request---------");
    print("Request_BaseUrl:${options.baseUrl}");
    print("Request_Path:${options.path}");
    print("Request_Method:${options.method}");
    print("Request_Headers:${options.headers}");
    print("Request_Data:${options.data}");
    print("Request_QueryParameters:${options.queryParameters}");
    print("---------End Http Request---------");
    return super.onRequest(options);
  }

  @override
  Future onResponse(Response response) {
    print("---------Start Http Response---------");
    print("Response_BaseUrl:${response.request.baseUrl}");
    print("Response_Path:${response.request.path}");
    print("Response_StatusCode:${response.statusCode}");
    print("Response_StatusMessage:${response.statusMessage}");
    print("Response_Headers:${response.headers.toString()}");
    print("Response_Data:${response.data.toString()}");
    print("---------End Http Response---------");
    return super.onResponse(response);
  }
}