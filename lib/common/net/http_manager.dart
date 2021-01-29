import 'package:dio/dio.dart';

import 'Interceptor/auth_interceptor.dart';
import 'Interceptor/refresh_token_interceptor.dart';
import 'interceptor/http_log_lnterceptor.dart';
import 'entity/api_result_data.dart';
import 'entity/error_entity.dart';
import 'nw_api.dart';

///http请求
class HttpManager {
  static const CONTENT_TYPE_JSON = "application/json";
  static const CONTENT_TYPE_FORM = "application/x-www-form-urlencoded";

  Dio dio;
  BaseOptions options;

  HttpManager() {
    //BaseOptions、Options、RequestOptions 都可以配置参数，优先级别依次递增，
    //且可以根据优先级别覆盖参数
    options = BaseOptions(
      //请求基地址,可以包含子路径
      baseUrl: NWApi.BASE_URL,
      //连接服务器超时时间，单位是毫秒.
      connectTimeout: 10000,
      //响应流上前后两次接受到数据的间隔，单位为毫秒。
      receiveTimeout: 5000,
      //Http请求头.
      headers: {
        //do something
        // "Content-Type": CONTENT_TYPE_FORM
      },
      //请求的Content-Type，默认值是"application/json; charset=utf-8",Headers.formUrlEncodedContentType会自动编码请求体.
      // contentType: CONTENT_TYPE_FORM,
      //表示期望以那种格式(方式)接受响应数据。接受四种类型 `json`, `stream`, `plain`, `bytes`. 默认值是 `json`,
      // responseType: ResponseType.plain,
    );

    dio = Dio(options);

    // _dio.interceptors.add(_tokenInterceptors);
    dio.interceptors.add(AuthInterceptor());

    dio.interceptors.add(HttpLogInterceptor());

    dio.interceptors.add(RefreshTokenInterceptor());
  }

  ///发起网络请求
  netFetch(String path,
      {dynamic data,
      Map<String, dynamic> queryParameters,
      CancelToken cancelToken,
      Options options,
      void Function(int, int) onSendProgress,
      void Function(int, int) onReceiveProgress}) async {
    ApiResultData result = ApiResultData();
    try {
      Response response = await dio.request(
        path,
        data: data,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
        options: options,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      if (response != null) {
        result.success = true;
        result.data = response.data;
      } else {
        result.success = false;
        result.error = ErrorEntity(code: -1, message: "未知错误");
      }
      _handleApiResultData(result);
      return result;
    } on DioError catch (e) {
      result.success = false;
      result.error = _createErrorEntity(e);
      _handleApiResultData(result);
      return result;
    }
  }

  // 错误信息
  ErrorEntity _createErrorEntity(DioError error) {
    switch (error.type) {
      case DioErrorType.CANCEL:
        {
          return ErrorEntity(code: -1, message: "请求取消");
        }
        break;
      case DioErrorType.CONNECT_TIMEOUT:
        {
          return ErrorEntity(code: -1, message: "连接超时");
        }
        break;
      case DioErrorType.SEND_TIMEOUT:
        {
          return ErrorEntity(code: -1, message: "请求超时");
        }
        break;
      case DioErrorType.RECEIVE_TIMEOUT:
        {
          return ErrorEntity(code: -1, message: "响应超时");
        }
        break;
      case DioErrorType.RESPONSE:
        {
          try {
            int errCode = error.response.statusCode;
            String errMsg = error.response.statusMessage;
            return ErrorEntity(code: errCode, message: errMsg);
            // switch (errCode) {
            //   case 400:
            //     {

            //       return ErrorEntity(code: errCode, message: "请求语法错误");
            //     }
            //     break;
            //   case 403:
            //     {
            //       return ErrorEntity(code: errCode, message: "服务器拒绝执行");
            //     }
            //     break;
            //   case 404:
            //     {
            //       return ErrorEntity(code: errCode, message: "无法连接服务器");
            //     }
            //     break;
            //   case 405:
            //     {
            //       return ErrorEntity(code: errCode, message: "请求方法被禁止");
            //     }
            //     break;
            //   case 500:
            //     {
            //       return ErrorEntity(code: errCode, message: "服务器内部错误");
            //     }
            //     break;
            //   case 502:
            //     {
            //       return ErrorEntity(code: errCode, message: "无效的请求");
            //     }
            //     break;
            //   case 503:
            //     {
            //       return ErrorEntity(code: errCode, message: "服务器挂了");
            //     }
            //     break;
            //   case 505:
            //     {
            //       return ErrorEntity(code: errCode, message: "不支持HTTP协议请求");
            //     }
            //     break;
            //   default:
            //     {
            //       return ErrorEntity(code: errCode, message: "未知错误");
            //     }
            // }
          } on Exception catch (_) {
            return ErrorEntity(code: -1, message: "未知错误");
          }
        }
        break;
      default:
        {
          return ErrorEntity(code: -1, message: error.error.message);
        }
    }
  }

  void _handleApiResultData(ApiResultData result) {
    // if (result != null && result.error != null && result.error.code == 401) {
    //   //未授权
    //   eventBus.emit(AppLoginStatusEvent(LoginStatus.Unlogin));
    // }
  }
}

final HttpManager httpManager = HttpManager();
