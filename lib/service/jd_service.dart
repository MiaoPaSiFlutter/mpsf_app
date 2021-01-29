// import 'package:mpsf_package_common/mpsf_package_common.dart';

// class FGRespModel {
//   int status;
//   String tipTitle;
//   String alertMsg;
//   dynamic data;
// }

// class JdService {
//   static String basePath = "assets/datas-mock/";

//   /// 加载本地数据
//   static Future<MpsfResultData> baseLoad(String fileName) async {
//     MpsfResultData res = await MpsfLoadData.loadJson(basePath + fileName);
//     return res;
//   }

//   /// 版本信息
//   static Future<FGRespModel> version() async {
//     MpsfResultData res = await baseLoad("jd_version.json");
//     FGRespModel respM = FGRespModel();
//     if (res.code == 200) {
//       respM.status = BlankPageStatus.statusReady;
//       respM.data = res.data;
//     } else {
//       respM.status = BlankPageStatus.statusError;
//       respM.tipTitle = '网络请求错误,状态码:' + res.code.toString();
//     }
//     return respM;
//   }

//   /// 版本测试
//   static Future<FGRespModel> openUpgrade() async {
//     MpsfResultData res = await baseLoad("jd_openUpgrade.json");
//     FGRespModel respM = FGRespModel();
//     if (res.code == 200) {
//       respM.status = BlankPageStatus.statusReady;
//       respM.data = res.data;
//     } else {
//       respM.status = BlankPageStatus.statusReady;
//       respM.tipTitle = '网络请求错误,状态码:' + res.code.toString();
//     }
//     return respM;
//   }

//   /// 启动广告信息
//   static Future<FGRespModel> start() async {
//     MpsfResultData res = await baseLoad("jd_start.json");
//     FGRespModel respM = FGRespModel();
//     if (res.code == 200) {
//       respM.status = BlankPageStatus.statusReady;
//       respM.data = res.data;
//     } else {
//       respM.status = BlankPageStatus.statusReady;
//       respM.tipTitle = '网络请求错误,状态码:' + res.code.toString();
//     }
//     return respM;
//   }

//   /// tabItem信息
//   static Future<FGRespModel> readCustomSurfaceList() async {
//     MpsfResultData res = await baseLoad("jd_readCustomSurfaceList.json");
//     FGRespModel respM = FGRespModel();
//     if (res.code == 200) {
//       respM.status = BlankPageStatus.statusReady;
//       respM.data = res.data;
//     } else {
//       respM.status = BlankPageStatus.statusReady;
//       respM.tipTitle = '网络请求错误,状态码:' + res.code.toString();
//     }
//     return respM;
//   }

//   /// 搜索
//   static Future<FGRespModel> searchBoxWord() async {
//     MpsfResultData res = await baseLoad("jd_searchBoxWord.json");
//     FGRespModel respM = FGRespModel();
//     if (res.code == 200) {
//       respM.status = BlankPageStatus.statusReady;
//       respM.data = res.data;
//     } else {
//       respM.status = BlankPageStatus.statusReady;
//       respM.tipTitle = '网络请求错误,状态码:' + res.code.toString();
//     }
//     return respM;
//   }

//   /// 搜索-搜索发现
//   static Future<FGRespModel> hotWords() async {
//     MpsfResultData res = await baseLoad("jd_hotWords.json");
//     FGRespModel respM = FGRespModel();
//     if (res.code == 200) {
//       respM.status = BlankPageStatus.statusReady;
//       respM.data = res.data;
//     } else {
//       respM.status = BlankPageStatus.statusReady;
//       respM.tipTitle = '网络请求错误,状态码:' + res.code.toString();
//     }
//     return respM;
//   }

//   /// 搜索-热搜榜
//   static Future<FGRespModel> hotSearchTerms() async {
//     MpsfResultData res = await baseLoad("jd_hotSearchTerms.json");
//     FGRespModel respM = FGRespModel();
//     if (res.code == 200) {
//       respM.status = BlankPageStatus.statusReady;
//       respM.data = res.data;
//     } else {
//       respM.status = BlankPageStatus.statusReady;
//       respM.tipTitle = '网络请求错误,状态码:' + res.code.toString();
//     }
//     return respM;
//   }

//   /// 首页
//   static Future<FGRespModel> categoryHome(Map parmers) async {
//     String pcid = parmers["pcid"];

//     MpsfResultData res = await baseLoad("jd_categoryHome_$pcid.json");
//     FGRespModel respM = FGRespModel();
//     if (res.code == 200) {
//       respM.status = BlankPageStatus.statusReady;
//       respM.data = res.data;
//     } else {
//       respM.status = BlankPageStatus.statusReady;
//       respM.tipTitle = '网络请求错误,状态码:' + res.code.toString();
//     }
//     return respM;
//   }

//   /// 首页-底部item[为你推荐，直播，实惠。。。]
//   static Future<FGRespModel> uniformRecommend() async {
//     MpsfResultData res = await baseLoad("jd_uniformRecommend.json");
//     FGRespModel respM = FGRespModel();
//     if (res.code == 200) {
//       respM.status = BlankPageStatus.statusReady;
//       respM.data = res.data;
//     } else {
//       respM.status = BlankPageStatus.statusReady;
//       respM.tipTitle = '网络请求错误,状态码:' + res.code.toString();
//     }
//     return respM;
//   }

//   /// 分类-左侧列表
//   static Future<FGRespModel> entranceCatalog() async {
//     MpsfResultData res = await baseLoad("jd_entranceCatalog.json");
//     FGRespModel respM = FGRespModel();
//     if (res.code == 200) {
//       respM.status = BlankPageStatus.statusReady;
//       respM.data = res.data;
//     } else {
//       respM.status = BlankPageStatus.statusReady;
//       respM.tipTitle = '网络请求错误,状态码:' + res.code.toString();
//     }
//     return respM;
//   }

//   /// 分类-右侧信息[根据cid值获取不同数据]
//   static Future<FGRespModel> newSubCatalog(int cid) async {
//     String fileName = "jd_newSubCatalog_$cid.json";
//     MpsfResultData res = await baseLoad(fileName);
//     FGRespModel respM = FGRespModel();
//     if (res.code == 200) {
//       respM.status = BlankPageStatus.statusReady;
//       respM.data = res.data;
//     } else {
//       respM.status = BlankPageStatus.statusReady;
//       respM.tipTitle = '网络请求错误,状态码:' + res.code.toString();
//     }
//     return respM;
//   }

//   /// 分类-右侧促销信息
//   static Future<FGRespModel> getCmsPromotionsListByCatelogyID() async {
//     String fileName = "jd_getCmsPromotionsListByCatelogyID.json";
//     MpsfResultData res = await baseLoad(fileName);
//     FGRespModel respM = FGRespModel();
//     if (res.code == 200) {
//       respM.status = BlankPageStatus.statusReady;
//       respM.data = res.data;
//     } else {
//       respM.status = BlankPageStatus.statusReady;
//       respM.tipTitle = '网络请求错误,状态码:' + res.code.toString();
//     }
//     return respM;
//   }

//   /// 发现顶部items
//   static Future<FGRespModel> jdDiscoveryFloorWithList() async {
//     MpsfResultData res = await baseLoad("jd_jdDiscoveryFloorWithList.json");
//     FGRespModel respM = FGRespModel();
//     if (res.code == 200) {
//       respM.status = BlankPageStatus.statusReady;
//       respM.data = res.data;
//     } else {
//       respM.status = BlankPageStatus.statusReady;
//       respM.tipTitle = '网络请求错误,状态码:' + res.code.toString();
//     }
//     return respM;
//   }

//   /// 发现-[关注]
//   static Future<FGRespModel> followV2EnterMainPage() async {
//     MpsfResultData res = await baseLoad("jd_followV2EnterMainPage.json");
//     FGRespModel respM = FGRespModel();
//     if (res.code == 200) {
//       respM.status = BlankPageStatus.statusReady;
//       respM.data = res.data;
//     } else {
//       respM.status = BlankPageStatus.statusReady;
//       respM.tipTitle = '网络请求错误,状态码:' + res.code.toString();
//     }
//     return respM;
//   }

//   /// 发现-[晒一晒]
//   static Future<FGRespModel> ugc_IndexFeedStream() async {
//     MpsfResultData res = await baseLoad("jd_ugc_IndexFeedStream.json");
//     FGRespModel respM = FGRespModel();
//     if (res.code == 200) {
//       respM.status = BlankPageStatus.statusReady;
//       respM.data = res.data;
//     } else {
//       respM.status = BlankPageStatus.statusReady;
//       respM.tipTitle = '网络请求错误,状态码:' + res.code.toString();
//     }
//     return respM;
//   }

//   /// 发现-[5G]
//   static Future<FGRespModel> discovery5GFeed() async {
//     MpsfResultData res = await baseLoad("jd_discovery5GFeed.json");
//     FGRespModel respM = FGRespModel();
//     if (res.code == 200) {
//       respM.status = BlankPageStatus.statusReady;
//       respM.data = res.data;
//     } else {
//       respM.status = BlankPageStatus.statusReady;
//       respM.tipTitle = '网络请求错误,状态码:' + res.code.toString();
//     }
//     return respM;
//   }

//   /// 发现-[直播]
//   static Future<FGRespModel> discoveryLiveListWithTabV836() async {
//     MpsfResultData res = await baseLoad("jd_discoveryLiveListWithTabV836.json");
//     FGRespModel respM = FGRespModel();
//     if (res.code == 200) {
//       respM.status = BlankPageStatus.statusReady;
//       respM.data = res.data;
//     } else {
//       respM.status = BlankPageStatus.statusReady;
//       respM.tipTitle = '网络请求错误,状态码:' + res.code.toString();
//     }
//     return respM;
//   }

//   /// 发现-[视频]
//   static Future<FGRespModel> discVideoVertList() async {
//     MpsfResultData res = await baseLoad("jd_discVideoVertList.json");
//     FGRespModel respM = FGRespModel();
//     if (res.code == 200) {
//       respM.status = BlankPageStatus.statusReady;
//       respM.data = res.data;
//     } else {
//       respM.status = BlankPageStatus.statusReady;
//       respM.tipTitle = '网络请求错误,状态码:' + res.code.toString();
//     }
//     return respM;
//   }

//   /// 我的
//   static Future<FGRespModel> personinfoBusiness() async {
//     MpsfResultData res = await baseLoad("jd_personinfoBusiness.json");
//     FGRespModel respM = FGRespModel();
//     if (res.code == 200) {
//       respM.status = BlankPageStatus.statusReady;
//       respM.data = res.data;
//     } else {
//       respM.status = BlankPageStatus.statusReady;
//       respM.tipTitle = '网络请求错误,状态码:' + res.code.toString();
//     }
//     return respM;
//   }

//   /// 我的-更多工具
//   static Future<FGRespModel> moreActivityInfo() async {
//     MpsfResultData res = await baseLoad("jd_moreActivityInfo.json");
//     FGRespModel respM = FGRespModel();
//     if (res.code == 200) {
//       respM.status = BlankPageStatus.statusReady;
//       respM.data = res.data;
//     } else {
//       respM.status = BlankPageStatus.statusReady;
//       respM.tipTitle = '网络请求错误,状态码:' + res.code.toString();
//     }
//     return respM;
//   }

//   /// 我的-Channel皮肤
//   static Future<FGRespModel> getSkinChannelData() async {
//     MpsfResultData res = await baseLoad("jd_getSkinChannelData.json");
//     FGRespModel respM = FGRespModel();
//     if (res.code == 200) {
//       respM.status = BlankPageStatus.statusReady;
//       respM.data = res.data;
//     } else {
//       respM.status = BlankPageStatus.statusReady;
//       respM.tipTitle = '网络请求错误,状态码:' + res.code.toString();
//     }
//     return respM;
//   }

//   /// 我的-全部皮肤
//   static Future<FGRespModel> getAllSkinChannel() async {
//     MpsfResultData res = await baseLoad("jd_getAllSkinChannel.json");
//     FGRespModel respM = FGRespModel();
//     if (res.code == 200) {
//       respM.status = BlankPageStatus.statusReady;
//       respM.data = res.data;
//     } else {
//       respM.status = BlankPageStatus.statusReady;
//       respM.tipTitle = '网络请求错误,状态码:' + res.code.toString();
//     }
//     return respM;
//   }

//   /// 我的-皮肤详情
//   static Future<FGRespModel> getDetailCustomSurfaceById() async {
//     MpsfResultData res = await baseLoad("jd_getDetailCustomSurfaceById.json");
//     FGRespModel respM = FGRespModel();
//     if (res.code == 200) {
//       respM.status = BlankPageStatus.statusReady;
//       respM.data = res.data;
//     } else {
//       respM.status = BlankPageStatus.statusReady;
//       respM.tipTitle = '网络请求错误,状态码:' + res.code.toString();
//     }
//     return respM;
//   }

//   /// 我的-设置
//   static Future<FGRespModel> myjdSetBusiness() async {
//     MpsfResultData res = await baseLoad("jd_myjdSetBusiness.json");
//     FGRespModel respM = FGRespModel();
//     if (res.code == 200) {
//       respM.status = BlankPageStatus.statusReady;
//       respM.data = res.data;
//     } else {
//       respM.status = BlankPageStatus.statusReady;
//       respM.tipTitle = '网络请求错误,状态码:' + res.code.toString();
//     }
//     return respM;
//   }
// }
