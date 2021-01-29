class Cf {
  String bgc;
  String spl;

  Cf({this.bgc, this.spl});

  Cf.fromJson(Map<String, dynamic> json) {
    bgc = json['bgc']?.toString();
    spl = json['spl']?.toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bgc'] = this.bgc;
    data['spl'] = this.spl;
    return data;
  }
}

class TextColorNode {
  String normal;
  String dark;
  String light;

  TextColorNode({this.normal, this.dark, this.light});

  TextColorNode.fromJson(Map<String, dynamic> json) {
    normal = json['normal']?.toString();
    dark = json['dark']?.toString();
    light = json['light']?.toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['normal'] = this.normal;
    data['dark'] = this.dark;
    data['light'] = this.light;
    return data;
  }
}

class Title {
  String color;
  String value;

  Title({this.color, this.value});

  Title.fromJson(Map<String, dynamic> json) {
    color = json['color']?.toString();
    value = json['value']?.toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['color'] = this.color;
    data['value'] = this.value;
    return data;
  }
}

class Footer {
  String jumpUrl;
  String text;

  Footer({this.jumpUrl, this.text});

  Footer.fromJson(Map<String, dynamic> json) {
    jumpUrl = json['jumpUrl']?.toString();
    text = json['text']?.toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['jumpUrl'] = this.jumpUrl;
    data['text'] = this.text;
    return data;
  }
}

class HeadStyleV90 {
  bool enable;

  HeadStyleV90({this.enable});

  HeadStyleV90.fromJson(Map<String, dynamic> json) {
    enable = json['enable'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['enable'] = this.enable;
    return data;
  }
}

class MyList {
  String id;
  String userText;
  String nickName;
  String questionContent;
  String skuId;
  String question;
  String wareImg;
  String userImg;
  String answerCountText;

  MyList(
      {this.id,
      this.userText,
      this.nickName,
      this.questionContent,
      this.skuId,
      this.question,
      this.wareImg,
      this.userImg,
      this.answerCountText});

  MyList.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toString();
    userText = json['userText']?.toString();
    nickName = json['nickName']?.toString();
    questionContent = json['questionContent']?.toString();
    skuId = json['skuId']?.toString();
    question = json['question']?.toString();
    wareImg = json['wareImg']?.toString();
    userImg = json['userImg']?.toString();
    answerCountText = json['answerCountText']?.toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['userText'] = this.userText;
    data['nickName'] = this.nickName;
    data['questionContent'] = this.questionContent;
    data['skuId'] = this.skuId;
    data['question'] = this.question;
    data['wareImg'] = this.wareImg;
    data['userImg'] = this.userImg;
    data['answerCountText'] = this.answerCountText;
    return data;
  }
}

class Extra {
  String content;
  String type;

  Extra({this.content, this.type});

  Extra.fromJson(Map<String, dynamic> json) {
    content = json['content']?.toString();
    type = json['type']?.toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['content'] = this.content;
    data['type'] = this.type;
    return data;
  }
}

class Biz {
  String text;
  String bizImgUrl;

  Biz({this.text, this.bizImgUrl});

  Biz.fromJson(Map<String, dynamic> json) {
    text = json['text']?.toString();
    bizImgUrl = json['bizImgUrl']?.toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    data['bizImgUrl'] = this.bizImgUrl;
    return data;
  }
}

class CardsResetOrderInfo {
  String sort;
  String functionId;
  String maidianId;

  CardsResetOrderInfo({this.sort, this.functionId, this.maidianId});

  CardsResetOrderInfo.fromJson(Map<String, dynamic> json) {
    sort = json['sort']?.toString();
    functionId = json['functionId']?.toString();
    maidianId = json['maidianId']?.toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sort'] = this.sort;
    data['functionId'] = this.functionId;
    data['maidianId'] = this.maidianId;
    return data;
  }
}

class CloseReminder {
  String cardSubTitle;
  String tempCardTitle;
  String cardTitle;

  CloseReminder({this.cardSubTitle, this.tempCardTitle, this.cardTitle});

  CloseReminder.fromJson(Map<String, dynamic> json) {
    cardSubTitle = json['cardSubTitle']?.toString();
    tempCardTitle = json['tempCardTitle']?.toString();
    cardTitle = json['cardTitle']?.toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cardSubTitle'] = this.cardSubTitle;
    data['tempCardTitle'] = this.tempCardTitle;
    data['cardTitle'] = this.cardTitle;
    return data;
  }
}

class JumpInfo {
  String jumpType;
  String jumpUrl;
  String needLogin;

  JumpInfo({this.jumpType, this.jumpUrl, this.needLogin});

  JumpInfo.fromJson(Map<String, dynamic> json) {
    jumpType = json['jumpType']?.toString();
    jumpUrl = json['jumpUrl']?.toString();
    needLogin = json['needLogin']?.toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['jumpType'] = this.jumpType;
    data['jumpUrl'] = this.jumpUrl;
    data['needLogin'] = this.needLogin;
    return data;
  }
}

class ClickMta {
  String eventParam;
  String pageParam;
  String eventId;
  String pageId;
  String pageLevel;
  String pagerParam;

  ClickMta(
      {this.eventParam,
      this.pageParam,
      this.eventId,
      this.pageId,
      this.pageLevel,
      this.pagerParam});

  ClickMta.fromJson(Map<String, dynamic> json) {
    eventParam = json['eventParam']?.toString();
    pageParam = json['pageParam']?.toString();
    eventId = json['eventId']?.toString();
    pageId = json['pageId']?.toString();
    pageLevel = json['pageLevel']?.toString();
    pagerParam = json['pagerParam']?.toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['eventParam'] = this.eventParam;
    data['pageParam'] = this.pageParam;
    data['eventId'] = this.eventId;
    data['pageId'] = this.pageId;
    data['pageLevel'] = this.pageLevel;
    data['pagerParam'] = this.pagerParam;
    return data;
  }
}

class SettingInfo {
  String title;
  String buttonIcon;
  String buttonType;
  String updateRedDotTime;
  String settingId;
  String showRedDot;

  SettingInfo({
    this.title,
    this.buttonIcon,
    this.buttonType,
    this.updateRedDotTime,
    this.settingId,
    this.showRedDot,
  });

  SettingInfo.fromJson(Map<String, dynamic> json) {
    title = json['title']?.toString();
    buttonIcon = json['buttonIcon']?.toString();
    buttonType = json['buttonType']?.toString();
    updateRedDotTime = json['updateRedDotTime']?.toString();
    settingId = json['settingId']?.toString();
    showRedDot = json['showRedDot']?.toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['buttonIcon'] = this.buttonIcon;
    data['buttonType'] = this.buttonType;
    data['updateRedDotTime'] = this.updateRedDotTime;
    data['settingId'] = this.settingId;
    data['showRedDot'] = this.showRedDot;
    return data;
  }
}

class ExpoMta {
  String eventParam;
  String eventId;
  String pageId;

  ExpoMta({this.eventParam, this.eventId, this.pageId});

  ExpoMta.fromJson(Map<String, dynamic> json) {
    eventParam = json['eventParam']?.toString();
    eventId = json['eventId']?.toString();
    pageId = json['pageId']?.toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['eventParam'] = this.eventParam;
    data['eventId'] = this.eventId;
    data['pageId'] = this.pageId;
    return data;
  }
}

class BgImgInfo {
  String radianImgDark;
  String radianImg;
  String bgImg;

  BgImgInfo({this.radianImgDark, this.radianImg, this.bgImg});

  BgImgInfo.fromJson(Map<String, dynamic> json) {
    radianImgDark = json['radianImgDark']?.toString();
    radianImg = json['radianImg']?.toString();
    bgImg = json['bgImg']?.toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['radianImgDark'] = this.radianImgDark;
    data['radianImg'] = this.radianImg;
    data['bgImg'] = this.bgImg;
    return data;
  }
}

class UserLevelInfo {
  String userLevelClass;
  String levelImg;
  String type;

  UserLevelInfo({this.userLevelClass, this.levelImg, this.type});

  UserLevelInfo.fromJson(Map<String, dynamic> json) {
    userLevelClass = json['userLevelClass']?.toString();
    levelImg = json['levelImg']?.toString();
    type = json['type']?.toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userLevelClass'] = this.userLevelClass;
    data['levelImg'] = this.levelImg;
    data['type'] = this.type;
    return data;
  }
}

class CommonInfo {
  String margin;
  String height;
  String alignStyle;
  String angle;
  String lableName;

  CommonInfo(
      {this.margin, this.height, this.alignStyle, this.angle, this.lableName});

  CommonInfo.fromJson(Map<String, dynamic> json) {
    margin = json['margin']?.toString();
    height = json['height']?.toString();
    alignStyle = json['alignStyle']?.toString();
    angle = json['angle']?.toString();
    lableName = json['lableName']?.toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['margin'] = this.margin;
    data['height'] = this.height;
    data['alignStyle'] = this.alignStyle;
    data['angle'] = this.angle;
    data['lableName'] = this.lableName;
    return data;
  }
}

class Banners {
  String jumpType;
  String pageParam;
  String eventParam;
  String jumpUrl;
  String eventId;
  String pageId;
  String lableImage;
  String lableName;
  String eventLevel;
  String orderGrade;

  Banners(
      {this.jumpType,
      this.pageParam,
      this.eventParam,
      this.jumpUrl,
      this.eventId,
      this.pageId,
      this.lableImage,
      this.lableName,
      this.eventLevel,
      this.orderGrade});

  Banners.fromJson(Map<String, dynamic> json) {
    jumpType = json['jumpType']?.toString();
    pageParam = json['pageParam']?.toString();
    eventParam = json['eventParam']?.toString();
    jumpUrl = json['jumpUrl']?.toString();
    eventId = json['eventId']?.toString();
    pageId = json['pageId']?.toString();
    lableImage = json['lableImage']?.toString();
    lableName = json['lableName']?.toString();
    eventLevel = json['eventLevel']?.toString();
    orderGrade = json['orderGrade']?.toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['jumpType'] = this.jumpType;
    data['pageParam'] = this.pageParam;
    data['eventParam'] = this.eventParam;
    data['jumpUrl'] = this.jumpUrl;
    data['eventId'] = this.eventId;
    data['pageId'] = this.pageId;
    data['lableImage'] = this.lableImage;
    data['lableName'] = this.lableName;
    data['eventLevel'] = this.eventLevel;
    data['orderGrade'] = this.orderGrade;
    return data;
  }
}

class ExtraInfo {
  String bid;
  String mid;

  ExtraInfo({this.bid, this.mid});

  ExtraInfo.fromJson(Map<String, dynamic> json) {
    bid = json['bid']?.toString();
    mid = json['mid']?.toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bid'] = this.bid;
    data['mid'] = this.mid;
    return data;
  }
}

class PlusInfo {
  String statusCode;
  String statusLabel;

  PlusInfo({this.statusCode, this.statusLabel});

  PlusInfo.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode']?.toString();
    statusLabel = json['statusLabel']?.toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['statusCode'] = this.statusCode;
    data['statusLabel'] = this.statusLabel;
    return data;
  }
}

class Jump {
  String des;
  Map params;
  Map shareInfo;
  String srv;
  String srvJson;

  Jump({this.des, this.params, this.shareInfo, this.srv, this.srvJson});

  Jump.fromJson(Map<String, dynamic> json) {
    des = json['des']?.toString();
    params = json['params'] != null ? json['params'] : null;
    shareInfo = json['shareInfo'] != null ? json['shareInfo'] : null;
    srv = json['srv']?.toString();
    srvJson = json['srvJson']?.toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['des'] = this.des;
    if (this.params != null) {
      data['params'] = this.params;
    }
    if (this.shareInfo != null) {
      data['shareInfo'] = this.shareInfo;
    }
    data['srv'] = this.srv;
    data['srvJson'] = this.srvJson;
    return data;
  }
}

class DarkMode {
  bool darkModeSwitch;
  bool darkModeTipSwitch;
  bool enable;
  String snapshotInBackground;
  DarkMode(
      {this.darkModeSwitch,
      this.darkModeTipSwitch,
      this.enable,
      this.snapshotInBackground});

  DarkMode.fromJson(Map<String, dynamic> json) {
    darkModeSwitch = json['darkModeSwitch'];
    darkModeTipSwitch = json['darkModeTipSwitch'];
    enable = json['enable'];
    snapshotInBackground = json['snapshotInBackground']?.toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['darkModeSwitch'] = this.darkModeSwitch;
    data['darkModeTipSwitch'] = this.darkModeTipSwitch;
    data['enable'] = this.enable;
    data['snapshotInBackground'] = this.snapshotInBackground;
    return data;
  }
}

class HomeArea {
  String img;
  String popCount;
  String homeAreaCode;
  String text;

  HomeArea({this.img, this.popCount, this.homeAreaCode, this.text});

  HomeArea.fromJson(Map<String, dynamic> json) {
    img = json['img']?.toString();
    popCount = json['popCount']?.toString();
    homeAreaCode = json['homeAreaCode']?.toString();
    text = json['text']?.toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['img'] = this.img;
    data['popCount'] = this.popCount;
    data['homeAreaCode'] = this.homeAreaCode;
    data['text'] = this.text;
    return data;
  }
}

class Param {
  String displayVersion;

  Param({this.displayVersion});

  Param.fromJson(Map<String, dynamic> json) {
    displayVersion = json['displayVersion']?.toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['displayVersion'] = this.displayVersion;
    return data;
  }
}

class Params {
  String sourceType;
  String abTestUI;
  String merge;
  String abTestScanQuery;
  String url;
  bool ishidden;
  String appname;
  Param param;
  String modulename;
  String dataFrom;
  String needLogin;

  Params({
    this.sourceType,
    this.abTestUI,
    this.merge,
    this.abTestScanQuery,
    this.url,
    this.ishidden,
    this.appname,
    this.param,
    this.modulename,
    this.dataFrom,
    this.needLogin,
  });

  Params.fromJson(Map<String, dynamic> json) {
    sourceType = json['sourceType']?.toString();
    abTestUI = json['abTestUI']?.toString();
    merge = json['merge']?.toString();
    abTestScanQuery = json['abTestScanQuery']?.toString();
    url = json['url']?.toString();
    ishidden = json['ishidden'];
    appname = json['appname']?.toString();
    param = json['param'] != null ? new Param.fromJson(json['param']) : null;
    modulename = json['modulename']?.toString();
    dataFrom = json['dataFrom']?.toString();
    needLogin = json['needLogin']?.toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sourceType'] = this.sourceType;
    data['abTestUI'] = this.abTestUI;
    data['merge'] = this.merge;
    data['abTestScanQuery'] = this.abTestScanQuery;
    data['url'] = this.url;
    data['ishidden'] = this.ishidden;
    data['appname'] = this.appname;
    if (this.param != null) {
      data['param'] = this.param.toJson();
    }
    data['modulename'] = this.modulename;
    data['dataFrom'] = this.dataFrom;
    data['needLogin'] = this.needLogin;

    return data;
  }
}

class Tips {
  int tipsShowTime;
  int tipsShowScene;
  int tipsShowInterval;
  int tipsStyle;
  int tipsFunction;
  int tipsIdleTime;
  int tipsShowType;
  String expoSrv;

  Tips(
      {this.tipsShowTime,
      this.tipsShowScene,
      this.tipsShowInterval,
      this.tipsStyle,
      this.tipsFunction,
      this.tipsIdleTime,
      this.tipsShowType,
      this.expoSrv});

  Tips.fromJson(Map<String, dynamic> json) {
    tipsShowTime = json['tipsShowTime'];
    tipsShowScene = json['tipsShowScene'];
    tipsShowInterval = json['tipsShowInterval'];
    tipsStyle = json['tipsStyle'];
    tipsFunction = json['tipsFunction'];
    tipsIdleTime = json['tipsIdleTime'];
    tipsShowType = json['tipsShowType'];
    expoSrv = json['expoSrv'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tipsShowTime'] = this.tipsShowTime;
    data['tipsShowScene'] = this.tipsShowScene;
    data['tipsShowInterval'] = this.tipsShowInterval;
    data['tipsStyle'] = this.tipsStyle;
    data['tipsFunction'] = this.tipsFunction;
    data['tipsIdleTime'] = this.tipsIdleTime;
    data['tipsShowType'] = this.tipsShowType;
    data['expoSrv'] = this.expoSrv;
    return data;
  }
}
