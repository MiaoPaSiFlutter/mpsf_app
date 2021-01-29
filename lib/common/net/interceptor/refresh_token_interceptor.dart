import 'package:dio/dio.dart';
import 'package:mpsf_app/common/config/config.dart';
import 'package:mpsf_app/common/config/net_config.dart';
import 'package:mpsf_app/common/event_bus/event_bus_header.dart';
import 'package:mpsf_app/common/local/local_storage.dart';
import 'package:mpsf_app/common/manager/app_manager.dart';

import '../http_manager.dart';

class RefreshTokenInterceptor extends Interceptor {
  @override
  onError(DioError err) async {
    if (err.response != null && err.response.statusCode == 401) {
      Dio dio = httpManager.dio; //获取dio单例
      dio.lock();
      String accessToken = await getToken(); //获取新token
      dio.unlock();

      if (accessToken != null) {
        var request = err.response.request; //千万不要调用 err.request
        request.headers['Authorization'] =
            'Bearer $accessToken'; //这里要单独修改之前请求里的token请求头为最新的token。
        try {
          var response = await dio.request(request.path,
              data: request.data,
              queryParameters: request.queryParameters,
              cancelToken: request.cancelToken,
              options: request,
              onSendProgress: request.onSendProgress,
              onReceiveProgress: request.onReceiveProgress);
          return response;
        } on DioError catch (e) {
          return e;
        }
      }
    }
    super.onError(err);
  }

  ///获取新token
  Future<String> getToken() async {
    // ignore: non_constant_identifier_names
    String access_token = await LocalStorage.remove(Config.ACCESS_TOKEN);
    /*
    {
      "access_token": "",
      "expires_in": 86400,
      "token_type": "Bearer",
      "scope": "CnBlogsApi"
    }
    */
    Dio tokenDio = Dio(); //创建新Dio实例

    try {
      String url = "https://api.cnblogs.com/token"; //refreshToken url
      dynamic data = {
        "client_id": NetConfig.CLIENT_ID,
        "client_secret": NetConfig.CLIENT_SECRET,
        "grant_type": "client_credentials"
      };
      Options options =
          Options(contentType: "application/x-www-form-urlencoded");

      //请求refreshToken刷新的接口
      var response = await tokenDio.post(url, data: data, options: options);
      //新的accessToken
      access_token = response.data['access_token'];
      //保存新的refreshToken
      LocalStorage.save(Config.ACCESS_TOKEN, access_token); 
    } on DioError catch (e) {
      if (e.response.statusCode == 401) {
        //401代表refresh_token过期
        //refreshToken过期，弹出登录页面
        eventBus.emit(AppEvent(AppEventType.Login));
      }
    }
    return access_token;
  }
}
