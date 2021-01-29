import 'package:dio/dio.dart';
import 'package:mpsf_app/common/config/net_config.dart';

import 'entity/api_result_data.dart';
import 'http_manager.dart';
import 'nw_api.dart';

class ApiService {
  /// authorization_code授权
  static Future<ApiResultData> getAuthorizeToken(String code) async {
    Map<String, dynamic> queryParameters =
        NetConfig.getNativeLoginCommonParmers(code);

    ApiResultData respM = await httpManager.netFetch(
      NWApi.getAuthorizeToken,
      data: queryParameters,
      options: Options(
        method: "POST",
        contentType: "application/x-www-form-urlencoded",
      ),
    );
    return respM;
  }

  /// 获取用户信息
  static Future<ApiResultData> fetchUserInfo() async {
    String url = "users";
    ApiResultData respM = await httpManager.netFetch(
      url,
      options: Options(
        method: "get",
        contentType: "application/json; charset=utf-8",
        //请求的Content-Type，默认值是"application/json; charset=utf-8",Headers.formUrlEncodedContentType会自动编码请求体.
        // contentType: Headers.formUrlEncodedContentType,
        // //表示期望以那种格式(方式)接受响应数据。接受四种类型 `json`, `stream`, `plain`, `bytes`. 默认值是 `json`,
        // responseType: ResponseType.plain,
      ),
    );
    return respM;
  }

  /// 获取我的博客列表
  static Future<ApiResultData> fetchApi(ApiType api,
      {String blogApp, int page, int pageSize}) async {
    ApiResultData respM;
    switch (api) {
      case ApiType.Statuses_all: //闪存-最新
        String url = "statuses/@all?" + "pageIndex=$page&pageSize=$pageSize";
        respM =
            await httpManager.netFetch(url, options: Options(method: "get"));
        break;
      case ApiType.Statuses_following: //闪存-关注
        String url =
            "statuses/@following?" + "pageIndex=$page&pageSize=$pageSize";
        respM =
            await httpManager.netFetch(url, options: Options(method: "get"));
        break;
      case ApiType.Statuses_my: //闪存-我的
        String url = "statuses/@my?" + "pageIndex=$page&pageSize=$pageSize";
        respM =
            await httpManager.netFetch(url, options: Options(method: "get"));
        break;
      case ApiType.Home_blogs: //首页-博客
        String url =
            "blogposts/@sitehome?" + "pageIndex=$page&pageSize=$pageSize";
        respM =
            await httpManager.netFetch(url, options: Options(method: "get"));
        break;
      case ApiType.Home_news: //首页-新闻
        String url = "NewsItems?" + "pageIndex=$page&pageSize=$pageSize";
        respM =
            await httpManager.netFetch(url, options: Options(method: "get"));
        break;
      case ApiType.Home_articles: //首页-文库
        String url = "KbArticles?" + "pageIndex=$page&pageSize=$pageSize";
        respM =
            await httpManager.netFetch(url, options: Options(method: "get"));
        break;
      case ApiType.Home_blogposts: //首页-精华
        String url =
            "blogposts/@picked?" + "pageIndex=$page&pageSize=$pageSize";
        respM =
            await httpManager.netFetch(url, options: Options(method: "get"));
        break;
      case ApiType.Home_newsitems_hotweek: //本周内热门新闻
        String url =
            "newsitems/@hot-week?" + "pageIndex=$page&pageSize=$pageSize";
        respM =
            await httpManager.netFetch(url, options: Options(method: "get"));
        break;
      case ApiType.Home_newsitems_recommended: //推荐新闻
        String url =
            "newsitems/@recommended?" + "pageIndex=$page&pageSize=$pageSize";
        respM =
            await httpManager.netFetch(url, options: Options(method: "get"));
        break;

      case ApiType.My_blogs: //我的博客
        String url = "blogs/$blogApp/posts?" + "pageIndex=$page";
        respM =
            await httpManager.netFetch(url, options: Options(method: "get"));
        break;
      case ApiType.My_bookmarks: //我的收藏
        String url = "Bookmarks?" + "pageIndex=$page&pageSize=$pageSize";
        respM =
            await httpManager.netFetch(url, options: Options(method: "get"));
        break;
      case ApiType.Questions_all: //最新
        String url = "questions/@all?" + "pageIndex=$page&pageSize=$pageSize";
        respM =
            await httpManager.netFetch(url, options: Options(method: "get"));
        break;
      case ApiType.Questions_highscore: //高分
        String url =
            "questions/@highscore?" + "pageIndex=$page&pageSize=$pageSize";
        respM =
            await httpManager.netFetch(url, options: Options(method: "get"));
        break;
      case ApiType.Questions_solved: //已解决
        String url =
            "questions/@solved?" + "pageIndex=$page&pageSize=$pageSize";
        respM =
            await httpManager.netFetch(url, options: Options(method: "get"));
        break;
      default:
    }
    return respM;
  }
}
