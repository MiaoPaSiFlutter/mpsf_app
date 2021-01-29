enum ApiType {
  Statuses_all,//闪存-最新
  Statuses_following,//闪存-关注
  Statuses_my,//闪存-我的
  Home_blogs,//首页-博客
  Home_news,//首页-新闻
  Home_articles,//首页-文库
  Home_blogposts,//首页-精华
  Home_newsitems_hotweek,//本周内热门新闻
  Home_newsitems_recommended,//推荐新闻
  My_blogs,//我的博客
  My_bookmarks,//我的收藏
  Questions_all,//最新
  Questions_highscore,//高分
  Questions_solved,//已解决
}



class NWApi {
  static const String BASE_URL = "https://api.cnblogs.com/api/";

  static const String TEST_URL = "https://api.cnblogs.com/api/";
  static final String getAuthorizeToken = "https://oauth.cnblogs.com/connect/token";
}
