import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:mpsf_app/common/config/config.dart';
import 'package:mpsf_app/common/local/local_storage.dart';

/*
AuthInterceptor：主要作用在请求内加入http中header的信息：
*/
class AuthInterceptor extends Interceptor {
  @override
  Future onRequest(RequestOptions options) async {
    String accessToken = await LocalStorage.get(Config.ACCESS_TOKEN);
    if (accessToken != null && accessToken != '') {
      options.headers['Authorization'] = 'Bearer $accessToken';
    }
    return super.onRequest(options);
  }
}
