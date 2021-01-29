import 'jd_models.dart';

class JDFloors {
  String code;
  List<Floors> floors;
  Others others;

  JDFloors({this.code, this.floors, this.others});

  JDFloors.fromJson(Map<String, dynamic> json) {
    code = json['code']?.toString();
    if (json['floors'] != null) {
      floors = new List<Floors>();
      json['floors'].forEach((v) {
        floors.add(new Floors.fromJson(v));
      });
    }
    others =
        json['others'] != null ? new Others.fromJson(json['others']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    if (this.floors != null) {
      data['floors'] = this.floors.map((v) => v.toJson()).toList();
    }
    if (this.others != null) {
      data['others'] = this.others.toJson();
    }
    return data;
  }
}

class Floors {
  String bId;
  Cf cf;
  Data data;
  String mId;
  String refId;
  String sortId;

  Floors({this.bId, this.cf, this.data, this.mId, this.refId, this.sortId});

  Floors.fromJson(Map<String, dynamic> json) {
    bId = json['bId']?.toString();
    cf = json['cf'] != null ? new Cf.fromJson(json['cf']) : null;
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    mId = json['mId']?.toString();
    refId = json['refId']?.toString();
    sortId = json['sortId']?.toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bId'] = this.bId;
    if (this.cf != null) {
      data['cf'] = this.cf.toJson();
    }
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    data['mId'] = this.mId;
    data['refId'] = this.refId;
    data['sortId'] = this.sortId;
    return data;
  }
}

class Data {
  List<String> downData;
  List<String> upData;
  List<CardsResetOrderInfo> cardsResetOrderInfo;
  CloseReminder closeReminder;
  TopNavigationBar topNavigationBar;
  FloatLayer floatLayer;
  List<String> supportFloors;
  List<JingxiangCredit> jingxiangCredit;
  String style;
  BgImgInfo bgImgInfo;
  BlackCardInfo blackCardInfo;
  UserLevelInfo userLevelInfo;
  String labelColorStyle;
  TextColorNode textColorNode;
  UserInfoSns userInfoSns;
  String userType;
  List<OrderList> orderList;
  ExpoMta expoMta;
  List<WalletList> walletList;
  ExtendInfo extendInfo;
  List<Nodes> nodes;
  MaiDian maiDian;
  String enc;
  String attentionList;
  CommonInfo commonInfo;
  List<Banners> banners;
  String text;
  String iconUrl;
  String tips;
  ExtraInfo extraInfo;
  BizData bizData;
  String questionImgUrl;
  List<MyList> myList;
  String testId;
  String answerImgUrl;
  String questionText;
  String strategyId;
  String testParam;
  List<InfoList> infoList;
  Title title;

  Data(
      {this.downData,
      this.upData,
      this.cardsResetOrderInfo,
      this.closeReminder,
      this.topNavigationBar,
      this.floatLayer,
      this.supportFloors,
      this.jingxiangCredit,
      this.style,
      this.bgImgInfo,
      this.blackCardInfo,
      this.userLevelInfo,
      this.labelColorStyle,
      this.textColorNode,
      this.userInfoSns,
      this.userType,
      this.orderList,
      this.expoMta,
      this.walletList,
      this.extendInfo,
      this.nodes,
      this.maiDian,
      this.enc,
      this.attentionList,
      this.commonInfo,
      this.banners,
      this.text,
      this.iconUrl,
      this.tips,
      this.extraInfo,
      this.bizData,
      this.questionImgUrl,
      this.myList,
      this.testId,
      this.answerImgUrl,
      this.questionText,
      this.strategyId,
      this.testParam,
      this.infoList,
      this.title});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['upData'] != null) {
      upData = json['upData'].cast<String>();
    }
    if (json['downData'] != null) {
      downData = json['downData'].cast<String>();
    }
    if (json['cardsResetOrderInfo'] != null) {
      cardsResetOrderInfo = new List<CardsResetOrderInfo>();
      json['cardsResetOrderInfo'].forEach((v) {
        cardsResetOrderInfo.add(new CardsResetOrderInfo.fromJson(v));
      });
    }
    closeReminder = json['closeReminder'] != null
        ? new CloseReminder.fromJson(json['closeReminder'])
        : null;
    topNavigationBar = json['topNavigationBar'] != null
        ? new TopNavigationBar.fromJson(json['topNavigationBar'])
        : null;
    floatLayer = json['floatLayer'] != null
        ? new FloatLayer.fromJson(json['floatLayer'])
        : null;
    supportFloors = json['supportFloors'] != null
        ? json['supportFloors'].cast<String>()
        : null;
    if (json['jingxiangCredit'] != null) {
      jingxiangCredit = new List<JingxiangCredit>();
      json['jingxiangCredit'].forEach((v) {
        jingxiangCredit.add(new JingxiangCredit.fromJson(v));
      });
    }
    style = json['style']?.toString();
    bgImgInfo = json['bgImgInfo'] != null
        ? new BgImgInfo.fromJson(json['bgImgInfo'])
        : null;
    blackCardInfo = json['blackCardInfo'] != null
        ? new BlackCardInfo.fromJson(json['blackCardInfo'])
        : null;
    userLevelInfo = json['userLevelInfo'] != null
        ? new UserLevelInfo.fromJson(json['userLevelInfo'])
        : null;
    labelColorStyle = json['labelColorStyle']?.toString();
    textColorNode = json['textColorNode'] != null
        ? new TextColorNode.fromJson(json['textColorNode'])
        : null;
    userInfoSns = json['userInfoSns'] != null
        ? new UserInfoSns.fromJson(json['userInfoSns'])
        : null;
    userType = json['userType']?.toString();
    if (json['orderList'] != null) {
      orderList = new List<OrderList>();
      json['orderList'].forEach((v) {
        orderList.add(new OrderList.fromJson(v));
      });
    }
    expoMta =
        json['expoMta'] != null ? new ExpoMta.fromJson(json['expoMta']) : null;
    if (json['walletList'] != null) {
      walletList = new List<WalletList>();
      json['walletList'].forEach((v) {
        walletList.add(new WalletList.fromJson(v));
      });
    }
    extendInfo = json['extendInfo'] != null
        ? new ExtendInfo.fromJson(json['extendInfo'])
        : null;
    if (json['nodes'] != null) {
      nodes = new List<Nodes>();
      json['nodes'].forEach((v) {
        nodes.add(new Nodes.fromJson(v));
      });
    }
    maiDian =
        json['maiDian'] != null ? new MaiDian.fromJson(json['maiDian']) : null;
    enc = json['enc']?.toString();
    attentionList = json['attentionList']?.toString();
    commonInfo = json['commonInfo'] != null
        ? new CommonInfo.fromJson(json['commonInfo'])
        : null;
    if (json['banners'] != null) {
      banners = new List<Banners>();
      json['banners'].forEach((v) {
        banners.add(new Banners.fromJson(v));
      });
    }
    text = json['text']?.toString();
    iconUrl = json['iconUrl']?.toString();
    tips = json['tips']?.toString();
    extraInfo = json['extraInfo'] != null
        ? new ExtraInfo.fromJson(json['extraInfo'])
        : null;
    bizData =
        json['bizData'] != null ? new BizData.fromJson(json['bizData']) : null;
    questionImgUrl = json['questionImgUrl']?.toString();
    if (json['myList'] != null) {
      myList = new List<MyList>();
      json['myList'].forEach((v) {
        myList.add(new MyList.fromJson(v));
      });
    }
    testId = json['testId']?.toString();
    answerImgUrl = json['answerImgUrl']?.toString();
    questionText = json['questionText']?.toString();
    strategyId = json['strategyId']?.toString();
    testParam = json['testParam']?.toString();
    if (json['infoList'] != null) {
      infoList = new List<InfoList>();
      json['infoList'].forEach((v) {
        infoList.add(new InfoList.fromJson(v));
      });
    }
    title = json['title'] != null ? new Title.fromJson(json['title']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['downData'] = this.downData;
    data['upData'] = this.upData;
    if (this.cardsResetOrderInfo != null) {
      data['cardsResetOrderInfo'] =
          this.cardsResetOrderInfo.map((v) => v.toJson()).toList();
    }
    if (this.closeReminder != null) {
      data['closeReminder'] = this.closeReminder.toJson();
    }
    if (this.topNavigationBar != null) {
      data['topNavigationBar'] = this.topNavigationBar.toJson();
    }
    if (this.floatLayer != null) {
      data['floatLayer'] = this.floatLayer.toJson();
    }
    data['supportFloors'] = this.supportFloors;
    if (this.jingxiangCredit != null) {
      data['jingxiangCredit'] =
          this.jingxiangCredit.map((v) => v.toJson()).toList();
    }
    data['style'] = this.style;
    if (this.bgImgInfo != null) {
      data['bgImgInfo'] = this.bgImgInfo.toJson();
    }
    if (this.blackCardInfo != null) {
      data['blackCardInfo'] = this.blackCardInfo.toJson();
    }
    if (this.userLevelInfo != null) {
      data['userLevelInfo'] = this.userLevelInfo.toJson();
    }
    data['labelColorStyle'] = this.labelColorStyle;
    if (this.textColorNode != null) {
      data['textColorNode'] = this.textColorNode.toJson();
    }
    if (this.userInfoSns != null) {
      data['userInfoSns'] = this.userInfoSns.toJson();
    }
    data['userType'] = this.userType;
    if (this.orderList != null) {
      data['orderList'] = this.orderList.map((v) => v.toJson()).toList();
    }
    if (this.expoMta != null) {
      data['expoMta'] = this.expoMta.toJson();
    }
    if (this.walletList != null) {
      data['walletList'] = this.walletList.map((v) => v.toJson()).toList();
    }
    if (this.extendInfo != null) {
      data['extendInfo'] = this.extendInfo.toJson();
    }
    if (this.nodes != null) {
      data['nodes'] = this.nodes.map((v) => v.toJson()).toList();
    }
    if (this.maiDian != null) {
      data['maiDian'] = this.maiDian.toJson();
    }
    data['enc'] = this.enc;
    data['attentionList'] = this.attentionList;
    if (this.commonInfo != null) {
      data['commonInfo'] = this.commonInfo.toJson();
    }
    if (this.banners != null) {
      data['banners'] = this.banners.map((v) => v.toJson()).toList();
    }
    data['text'] = this.text;
    data['iconUrl'] = this.iconUrl;
    data['tips'] = this.tips;
    if (this.extraInfo != null) {
      data['extraInfo'] = this.extraInfo.toJson();
    }
    if (this.bizData != null) {
      data['bizData'] = this.bizData.toJson();
    }
    data['questionImgUrl'] = this.questionImgUrl;
    if (this.myList != null) {
      data['myList'] = this.myList.map((v) => v.toJson()).toList();
    }
    data['testId'] = this.testId;
    data['answerImgUrl'] = this.answerImgUrl;
    data['questionText'] = this.questionText;
    data['strategyId'] = this.strategyId;
    data['testParam'] = this.testParam;
    if (this.infoList != null) {
      data['infoList'] = this.infoList.map((v) => v.toJson()).toList();
    }
    if (this.title != null) {
      data['title'] = this.title.toJson();
    }
    return data;
  }
}

class TopNavigationBar {
  JumpInfo jumpInfo;
  ClickMta clickMta;
  String headImg;
  SettingInfo settingInfo;
  String functionId;
  String contentColor;

  TopNavigationBar(
      {this.jumpInfo,
      this.clickMta,
      this.headImg,
      this.settingInfo,
      this.functionId,
      this.contentColor});

  TopNavigationBar.fromJson(Map<String, dynamic> json) {
    jumpInfo = json['jumpInfo'] != null
        ? new JumpInfo.fromJson(json['jumpInfo'])
        : null;
    clickMta = json['clickMta'] != null
        ? new ClickMta.fromJson(json['clickMta'])
        : null;
    headImg = json['headImg']?.toString();
    settingInfo = json['settingInfo'] != null
        ? new SettingInfo.fromJson(json['settingInfo'])
        : null;
    functionId = json['functionId']?.toString();
    contentColor = json['contentColor']?.toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.jumpInfo != null) {
      data['jumpInfo'] = this.jumpInfo.toJson();
    }
    if (this.clickMta != null) {
      data['clickMta'] = this.clickMta.toJson();
    }
    data['headImg'] = this.headImg;
    if (this.settingInfo != null) {
      data['settingInfo'] = this.settingInfo.toJson();
    }
    data['functionId'] = this.functionId;
    data['contentColor'] = this.contentColor;
    return data;
  }
}

class FloatLayer {
  JumpInfo jumpInfo;
  Title title;
  ClickMta clickMta;
  String safeImage;
  String functionId;

  FloatLayer(
      {this.jumpInfo,
      this.title,
      this.clickMta,
      this.safeImage,
      this.functionId});

  FloatLayer.fromJson(Map<String, dynamic> json) {
    jumpInfo = json['jumpInfo'] != null
        ? new JumpInfo.fromJson(json['jumpInfo'])
        : null;
    title = json['title'] != null ? new Title.fromJson(json['title']) : null;
    clickMta = json['clickMta'] != null
        ? new ClickMta.fromJson(json['clickMta'])
        : null;
    safeImage = json['safeImage']?.toString();
    functionId = json['functionId']?.toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.jumpInfo != null) {
      data['jumpInfo'] = this.jumpInfo.toJson();
    }
    if (this.title != null) {
      data['title'] = this.title.toJson();
    }
    if (this.clickMta != null) {
      data['clickMta'] = this.clickMta.toJson();
    }
    data['safeImage'] = this.safeImage;
    data['functionId'] = this.functionId;
    return data;
  }
}

class JingxiangCredit {
  JumpInfo jumpInfo;
  String text;
  ClickMta clickMta;
  String encStr;
  String type;
  String functionId;
  ExpoMta expoMta;
  String enc;
  String timestamp;
  String showFlash;
  String bubbleImg;

  JingxiangCredit(
      {this.jumpInfo,
      this.text,
      this.clickMta,
      this.encStr,
      this.type,
      this.functionId,
      this.expoMta,
      this.enc,
      this.timestamp,
      this.showFlash,
      this.bubbleImg});

  JingxiangCredit.fromJson(Map<String, dynamic> json) {
    jumpInfo = json['jumpInfo'] != null
        ? new JumpInfo.fromJson(json['jumpInfo'])
        : null;
    text = json['text']?.toString();
    clickMta = json['clickMta'] != null
        ? new ClickMta.fromJson(json['clickMta'])
        : null;
    encStr = json['encStr']?.toString();
    type = json['type']?.toString();
    functionId = json['functionId']?.toString();
    expoMta =
        json['expoMta'] != null ? new ExpoMta.fromJson(json['expoMta']) : null;
    enc = json['enc']?.toString();
    timestamp = json['timestamp']?.toString();
    showFlash = json['showFlash']?.toString();
    bubbleImg = json['bubbleImg']?.toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.jumpInfo != null) {
      data['jumpInfo'] = this.jumpInfo.toJson();
    }
    data['text'] = this.text;
    if (this.clickMta != null) {
      data['clickMta'] = this.clickMta.toJson();
    }
    data['encStr'] = this.encStr;
    data['type'] = this.type;
    data['functionId'] = this.functionId;
    if (this.expoMta != null) {
      data['expoMta'] = this.expoMta.toJson();
    }
    data['enc'] = this.enc;
    data['timestamp'] = this.timestamp;
    data['showFlash'] = this.showFlash;
    data['bubbleImg'] = this.bubbleImg;
    return data;
  }
}

class BlackCardInfo {
  String imgUrl;
  JumpInfo jumpInfo;
  String textColor;
  String redDotUnixTime;
  ClickMta clickMta;
  String rightText;
  String midText;
  String leftImg;
  String flashUnixTime;
  String lottieUrl;
  String type;
  ExpoMta expoMta;

  BlackCardInfo(
      {this.imgUrl,
      this.jumpInfo,
      this.textColor,
      this.redDotUnixTime,
      this.clickMta,
      this.rightText,
      this.midText,
      this.leftImg,
      this.flashUnixTime,
      this.lottieUrl,
      this.type,
      this.expoMta});

  BlackCardInfo.fromJson(Map<String, dynamic> json) {
    imgUrl = json['imgUrl']?.toString();
    jumpInfo = json['jumpInfo'] != null
        ? new JumpInfo.fromJson(json['jumpInfo'])
        : null;
    textColor = json['textColor']?.toString();
    redDotUnixTime = json['redDotUnixTime']?.toString();
    clickMta = json['clickMta'] != null
        ? new ClickMta.fromJson(json['clickMta'])
        : null;
    rightText = json['rightText']?.toString();
    midText = json['midText']?.toString();
    leftImg = json['leftImg']?.toString();
    flashUnixTime = json['flashUnixTime']?.toString();
    lottieUrl = json['lottieUrl']?.toString();
    type = json['type']?.toString();
    expoMta =
        json['expoMta'] != null ? new ExpoMta.fromJson(json['expoMta']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imgUrl'] = this.imgUrl;
    if (this.jumpInfo != null) {
      data['jumpInfo'] = this.jumpInfo.toJson();
    }
    data['textColor'] = this.textColor;
    data['redDotUnixTime'] = this.redDotUnixTime;
    if (this.clickMta != null) {
      data['clickMta'] = this.clickMta.toJson();
    }
    data['rightText'] = this.rightText;
    data['midText'] = this.midText;
    data['leftImg'] = this.leftImg;
    data['flashUnixTime'] = this.flashUnixTime;
    data['lottieUrl'] = this.lottieUrl;
    data['type'] = this.type;
    if (this.expoMta != null) {
      data['expoMta'] = this.expoMta.toJson();
    }
    return data;
  }
}

class UserInfoSns {
  String imgUrl;
  JumpInfo jumpInfo;
  String registerImgUrl;
  String title;
  ClickMta clickMta;
  String faceLoginImg;

  UserInfoSns(
      {this.imgUrl,
      this.jumpInfo,
      this.registerImgUrl,
      this.title,
      this.clickMta,
      this.faceLoginImg});

  UserInfoSns.fromJson(Map<String, dynamic> json) {
    imgUrl = json['imgUrl']?.toString();
    jumpInfo = json['jumpInfo'] != null
        ? new JumpInfo.fromJson(json['jumpInfo'])
        : null;
    registerImgUrl = json['registerImgUrl']?.toString();
    title = json['title']?.toString();
    clickMta = json['clickMta'] != null
        ? new ClickMta.fromJson(json['clickMta'])
        : null;
    faceLoginImg = json['faceLoginImg']?.toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imgUrl'] = this.imgUrl;
    if (this.jumpInfo != null) {
      data['jumpInfo'] = this.jumpInfo.toJson();
    }
    data['registerImgUrl'] = this.registerImgUrl;
    data['title'] = this.title;
    if (this.clickMta != null) {
      data['clickMta'] = this.clickMta.toJson();
    }
    data['faceLoginImg'] = this.faceLoginImg;
    return data;
  }
}

class ExtendInfo {
  Header header;
  Footer footer;

  ExtendInfo({this.header, this.footer});

  ExtendInfo.fromJson(Map<String, dynamic> json) {
    header =
        json['header'] != null ? new Header.fromJson(json['header']) : null;
    footer =
        json['footer'] != null ? new Footer.fromJson(json['footer']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.header != null) {
      data['header'] = this.header.toJson();
    }
    if (this.footer != null) {
      data['footer'] = this.footer.toJson();
    }
    return data;
  }
}

class Header {
  String labelColor;
  RightIconText rightIconText4;
  String labelName;
  RightIconText rightIconText2;
  RightIconText rightIconText1;
  RightIconText rightIconText3;

  Header(
      {this.labelColor,
      this.rightIconText4,
      this.labelName,
      this.rightIconText2,
      this.rightIconText1,
      this.rightIconText3});

  Header.fromJson(Map<String, dynamic> json) {
    labelColor = json['labelColor']?.toString();
    rightIconText4 = json['rightIconText4'] != null
        ? new RightIconText.fromJson(json['rightIconText4'])
        : null;
    labelName = json['labelName']?.toString();
    rightIconText2 = json['rightIconText2'] != null
        ? new RightIconText.fromJson(json['rightIconText2'])
        : null;
    rightIconText1 = json['rightIconText1'] != null
        ? new RightIconText.fromJson(json['rightIconText1'])
        : null;
    rightIconText3 = json['rightIconText3'] != null
        ? new RightIconText.fromJson(json['rightIconText3'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['labelColor'] = this.labelColor;
    if (this.rightIconText4 != null) {
      data['rightIconText4'] = this.rightIconText4.toJson();
    }
    data['labelName'] = this.labelName;
    if (this.rightIconText2 != null) {
      data['rightIconText2'] = this.rightIconText2.toJson();
    }
    if (this.rightIconText1 != null) {
      data['rightIconText1'] = this.rightIconText1.toJson();
    }
    if (this.rightIconText3 != null) {
      data['rightIconText3'] = this.rightIconText3.toJson();
    }
    return data;
  }
}

class RightIconText {
  String text;
  ClickMta clickMta;
  Map param;
  bool hasNext;
  String iconUrl;
  ExpoMta tipMta;
  String functionId;
  String tip;
  ExpoMta expoMta;
  JumpInfo jumpInfo;

  RightIconText(
      {this.jumpInfo,
      this.text,
      this.clickMta,
      this.param,
      this.hasNext,
      this.iconUrl,
      this.tipMta,
      this.functionId,
      this.tip,
      this.expoMta});

  RightIconText.fromJson(Map<String, dynamic> json) {
    jumpInfo = json['jumpInfo'] != null
        ? new JumpInfo.fromJson(json['jumpInfo'])
        : null;

    text = json['text']?.toString();
    clickMta = json['clickMta'] != null
        ? new ClickMta.fromJson(json['clickMta'])
        : null;
    param = json['param'] != null ? json['param'] : null;
    hasNext = json['hasNext'];
    iconUrl = json['iconUrl']?.toString();
    tipMta =
        json['tipMta'] != null ? new ExpoMta.fromJson(json['tipMta']) : null;
    functionId = json['functionId']?.toString();
    tip = json['tip']?.toString();
    expoMta =
        json['expoMta'] != null ? new ExpoMta.fromJson(json['expoMta']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.jumpInfo != null) {
      data['jumpInfo'] = this.jumpInfo.toJson();
    }
    data['text'] = this.text;
    if (this.clickMta != null) {
      data['clickMta'] = this.clickMta.toJson();
    }
    if (this.param != null) {
      data['param'] = this.param;
    }
    data['hasNext'] = this.hasNext;
    data['iconUrl'] = this.iconUrl;
    if (this.tipMta != null) {
      data['tipMta'] = this.tipMta.toJson();
    }
    data['functionId'] = this.functionId;
    data['tip'] = this.tip;
    if (this.expoMta != null) {
      data['expoMta'] = this.expoMta.toJson();
    }
    return data;
  }
}

class Nodes {
  String redDotType;
  JumpInfo jumpInfo;
  Title title;
  ClickMta clickMta;
  String bubbleImage;
  String imageType;
  String imageUrl;
  String redDotTimeStamp;
  String playTimes;
  String functionId;
  String content;
  String safeImage;
  String bubbleImg;
  Title subtitle;
  String updateRedDotTime;
  String contentType;
  String showRedDot;
  ExpoMta expoMta;
  String jumpStyle;
  String introducTitle;
  String goodsPriceSuffix;
  String introducBrife;
  String goodsImage;
  String goodsPricePrefix;
  String goodsTitle;
  String goodsPrice;

  Nodes(
      {this.redDotType,
      this.jumpInfo,
      this.title,
      this.clickMta,
      this.bubbleImage,
      this.imageType,
      this.imageUrl,
      this.redDotTimeStamp,
      this.playTimes,
      this.functionId,
      this.content,
      this.safeImage,
      this.bubbleImg,
      this.subtitle,
      this.updateRedDotTime,
      this.contentType,
      this.showRedDot,
      this.expoMta,
      this.jumpStyle,
      this.introducTitle,
      this.goodsPriceSuffix,
      this.introducBrife,
      this.goodsImage,
      this.goodsPricePrefix,
      this.goodsTitle,
      this.goodsPrice});

  Nodes.fromJson(Map<String, dynamic> json) {
    redDotType = json['redDotType']?.toString();
    jumpInfo = json['jumpInfo'] != null
        ? new JumpInfo.fromJson(json['jumpInfo'])
        : null;
    if (json['title'] != null) {
      if (json['title'] is String) {
        title = Title(value: json['title']);
      } else if (json['title'] is Map) {
        title = new Title.fromJson(json['title']);
      }
    }

    clickMta = json['clickMta'] != null
        ? new ClickMta.fromJson(json['clickMta'])
        : null;
    bubbleImage = json['bubbleImage']?.toString();
    imageType = json['imageType']?.toString();
    imageUrl = json['imageUrl']?.toString();
    redDotTimeStamp = json['redDotTimeStamp']?.toString();
    playTimes = json['playTimes']?.toString();
    functionId = json['functionId']?.toString();
    content = json['content']?.toString();
    safeImage = json['safeImage']?.toString();
    bubbleImg = json['bubbleImg']?.toString();

    if (json['subTitle'] != null) {
      if (json['subTitle'] is String) {
        subtitle = Title(value: json['subTitle']);
      } else if (json['subTitle'] is Map) {
        subtitle = new Title.fromJson(json['subTitle']);
      }
    }
    if (json['subtitle'] != null) {
      if (json['subtitle'] is Map) {
        subtitle = new Title.fromJson(json['subtitle']);
      }
    }

    updateRedDotTime = json['updateRedDotTime']?.toString();
    contentType = json['contentType']?.toString();
    showRedDot = json['showRedDot']?.toString();
    expoMta =
        json['expoMta'] != null ? new ExpoMta.fromJson(json['expoMta']) : null;

    jumpStyle = json['jumpStyle']?.toString();
    introducTitle = json['StringroducTitle']?.toString();
    goodsPriceSuffix = json['goodsPriceSuffix']?.toString();
    introducBrife = json['introducBrife']?.toString();
    goodsImage = json['goodsImage']?.toString();
    goodsPricePrefix = json['goodsPricePrefix']?.toString();
    goodsTitle = json['goodsTitle']?.toString();
    goodsPrice = json['goodsPrice']?.toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['redDotType'] = this.redDotType;
    if (this.jumpInfo != null) {
      data['jumpInfo'] = this.jumpInfo.toJson();
    }
    data['subTitle'] = this.title.toJson();
    data['title'] = this.title;
    if (this.clickMta != null) {
      data['clickMta'] = this.clickMta.toJson();
    }
    data['bubbleImage'] = this.bubbleImage;
    data['imageType'] = this.imageType;
    data['imageUrl'] = this.imageUrl;
    data['redDotTimeStamp'] = this.redDotTimeStamp;
    data['playTimes'] = this.playTimes;
    data['functionId'] = this.functionId;
    data['content'] = this.content;
    data['safeImage'] = this.safeImage;
    data['bubbleImg'] = this.bubbleImg;
    if (this.subtitle != null) {
      data['subtitle'] = this.subtitle.toJson();
    }
    data['updateRedDotTime'] = this.updateRedDotTime;
    data['contentType'] = this.contentType;
    data['showRedDot'] = this.showRedDot;
    if (this.expoMta != null) {
      data['expoMta'] = this.expoMta.toJson();
    }

    data['jumpStyle'] = this.jumpStyle;
    data['StringroducTitle'] = this.introducTitle;
    data['goodsPriceSuffix'] = this.goodsPriceSuffix;
    data['introducBrife'] = this.introducBrife;
    data['goodsImage'] = this.goodsImage;
    data['goodsPricePrefix'] = this.goodsPricePrefix;
    data['goodsTitle'] = this.goodsTitle;
    data['goodsPrice'] = this.goodsPrice;
    return data;
  }
}

class BizData {
  PlusInfo plusInfo;
  ContentInfo contentInfo;
  NoticeInfo noticeInfo;
  MaiDian maiDian;
  String style;

  BizData(
      {this.plusInfo,
      this.contentInfo,
      this.noticeInfo,
      this.maiDian,
      this.style});

  BizData.fromJson(Map<String, dynamic> json) {
    plusInfo = json['plusInfo'] != null
        ? new PlusInfo.fromJson(json['plusInfo'])
        : null;
    contentInfo = json['contentInfo'] != null
        ? new ContentInfo.fromJson(json['contentInfo'])
        : null;
    noticeInfo = json['noticeInfo'] != null
        ? new NoticeInfo.fromJson(json['noticeInfo'])
        : null;
    maiDian =
        json['maiDian'] != null ? new MaiDian.fromJson(json['maiDian']) : null;
    style = json['style']?.toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.plusInfo != null) {
      data['plusInfo'] = this.plusInfo.toJson();
    }
    if (this.contentInfo != null) {
      data['contentInfo'] = this.contentInfo.toJson();
    }
    if (this.noticeInfo != null) {
      data['noticeInfo'] = this.noticeInfo.toJson();
    }
    if (this.maiDian != null) {
      data['maiDian'] = this.maiDian.toJson();
    }
    data['style'] = this.style;
    return data;
  }
}

class ContentInfo {
  Right right;
  Left left;

  ContentInfo({this.right, this.left});

  ContentInfo.fromJson(Map<String, dynamic> json) {
    right = json['right'] != null ? new Right.fromJson(json['right']) : null;
    left = json['left'] != null ? new Left.fromJson(json['left']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.right != null) {
      data['right'] = this.right.toJson();
    }
    if (this.left != null) {
      data['left'] = this.left.toJson();
    }
    return data;
  }
}

class Right {
  List<GoodsList> goodsList;
  String contentType;
  More more;
  String testId;
  String style;

  Right({this.goodsList, this.contentType, this.more, this.testId, this.style});

  Right.fromJson(Map<String, dynamic> json) {
    if (json['goodsList'] != null) {
      goodsList = new List<GoodsList>();
      json['goodsList'].forEach((v) {
        goodsList.add(new GoodsList.fromJson(v));
      });
    }
    contentType = json['contentType']?.toString();
    more = json['more'] != null ? new More.fromJson(json['more']) : null;
    testId = json['testId']?.toString();
    style = json['style']?.toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.goodsList != null) {
      data['goodsList'] = this.goodsList.map((v) => v.toJson()).toList();
    }
    data['contentType'] = this.contentType;
    if (this.more != null) {
      data['more'] = this.more.toJson();
    }
    data['testId'] = this.testId;
    data['style'] = this.style;
    return data;
  }
}

class GoodsList {
  String linkType;
  MaiDian maiDian;
  String image;
  String sku;
  String promotionPrice;
  String plusPrice;

  GoodsList(
      {this.linkType,
      this.maiDian,
      this.image,
      this.sku,
      this.promotionPrice,
      this.plusPrice});

  GoodsList.fromJson(Map<String, dynamic> json) {
    linkType = json['linkType']?.toString();
    maiDian =
        json['maiDian'] != null ? new MaiDian.fromJson(json['maiDian']) : null;
    image = json['image']?.toString();
    sku = json['sku']?.toString();
    promotionPrice = json['promotionPrice']?.toString();
    plusPrice = json['plusPrice']?.toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['linkType'] = this.linkType;
    if (this.maiDian != null) {
      data['maiDian'] = this.maiDian.toJson();
    }
    data['image'] = this.image;
    data['sku'] = this.sku;
    data['promotionPrice'] = this.promotionPrice;
    data['plusPrice'] = this.plusPrice;
    return data;
  }
}

class More {
  String linkType;
  MaiDian maiDian;
  String text;
  String url;

  More({this.linkType, this.maiDian, this.text, this.url});

  More.fromJson(Map<String, dynamic> json) {
    linkType = json['linkType']?.toString();
    maiDian =
        json['maiDian'] != null ? new MaiDian.fromJson(json['maiDian']) : null;
    text = json['text']?.toString();
    url = json['url']?.toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['linkType'] = this.linkType;
    if (this.maiDian != null) {
      data['maiDian'] = this.maiDian.toJson();
    }
    data['text'] = this.text;
    data['url'] = this.url;
    return data;
  }
}

class Left {
  String id;
  String title;
  String style;
  String linkType;
  MaiDian maiDian;
  String image;
  String contentType;
  String url;

  Left(
      {this.id,
      this.title,
      this.style,
      this.linkType,
      this.maiDian,
      this.image,
      this.contentType,
      this.url});

  Left.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toString();
    title = json['title']?.toString();
    style = json['style']?.toString();
    linkType = json['linkType']?.toString();
    maiDian =
        json['maiDian'] != null ? new MaiDian.fromJson(json['maiDian']) : null;
    image = json['image']?.toString();
    contentType = json['contentType']?.toString();
    url = json['url']?.toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['style'] = this.style;
    data['linkType'] = this.linkType;
    if (this.maiDian != null) {
      data['maiDian'] = this.maiDian.toJson();
    }
    data['image'] = this.image;
    data['contentType'] = this.contentType;
    data['url'] = this.url;
    return data;
  }
}

class NoticeInfo {
  String icon;
  List<MessageList> messageList;
  String label;

  NoticeInfo({this.icon, this.messageList, this.label});

  NoticeInfo.fromJson(Map<String, dynamic> json) {
    icon = json['icon']?.toString();
    if (json['messageList'] != null) {
      messageList = new List<MessageList>();
      json['messageList'].forEach((v) {
        messageList.add(new MessageList.fromJson(v));
      });
    }
    label = json['label']?.toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    if (this.messageList != null) {
      data['messageList'] = this.messageList.map((v) => v.toJson()).toList();
    }
    data['label'] = this.label;
    return data;
  }
}

class MessageList {
  String id;
  List<String> text;
  String style;
  String linkType;
  MaiDian maiDian;
  String url;

  MessageList(
      {this.id, this.text, this.style, this.linkType, this.maiDian, this.url});

  MessageList.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toString();
    text = json['text'].cast<String>();
    style = json['style']?.toString();
    linkType = json['linkType']?.toString();
    maiDian =
        json['maiDian'] != null ? new MaiDian.fromJson(json['maiDian']) : null;
    url = json['url']?.toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['text'] = this.text;
    data['style'] = this.style;
    data['linkType'] = this.linkType;
    if (this.maiDian != null) {
      data['maiDian'] = this.maiDian.toJson();
    }
    data['url'] = this.url;
    return data;
  }
}

class InfoList {
  String detailUrl;
  Extra extra;
  Data data;
  String modeType;
  String oneCategory;
  Biz biz;
  String info;

  InfoList(
      {this.detailUrl,
      this.extra,
      this.data,
      this.modeType,
      this.oneCategory,
      this.biz,
      this.info});

  InfoList.fromJson(Map<String, dynamic> json) {
    detailUrl = json['detailUrl']?.toString();
    extra = json['extra'] != null ? new Extra.fromJson(json['extra']) : null;
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    modeType = json['modeType']?.toString();
    oneCategory = json['oneCategory']?.toString();
    biz = json['biz'] != null ? new Biz.fromJson(json['biz']) : null;
    info = json['info']?.toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['detailUrl'] = this.detailUrl;
    if (this.extra != null) {
      data['extra'] = this.extra.toJson();
    }
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    data['modeType'] = this.modeType;
    data['oneCategory'] = this.oneCategory;
    if (this.biz != null) {
      data['biz'] = this.biz.toJson();
    }
    data['info'] = this.info;
    return data;
  }
}

class Others {
  DarkMode darkMode;
  HeadStyleV90 headStyleV90;

  Others({this.darkMode, this.headStyleV90});

  Others.fromJson(Map<String, dynamic> json) {
    darkMode = json['darkMode'] != null
        ? new DarkMode.fromJson(json['darkMode'])
        : null;
    headStyleV90 = json['headStyleV90'] != null
        ? new HeadStyleV90.fromJson(json['headStyleV90'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.darkMode != null) {
      data['darkMode'] = this.darkMode.toJson();
    }
    if (this.headStyleV90 != null) {
      data['headStyleV90'] = this.headStyleV90.toJson();
    }
    return data;
  }
}

class MaiDian {
  ExpoMta moreActivity;
  String notNowParam;
  String setParam;
  String noMoreSure;
  String more;
  String noMoreThink;
  String noMoreSureParam;
  String noMore;
  String fg_set;
  String notNow;
  String noMoreParam;
  String moreParam;
  String noMoreThinkParam;
  String eventId;
  String expoInfo;
  String eventParam;

  MaiDian(
      {this.moreActivity,
      this.notNowParam,
      this.setParam,
      this.noMoreSure,
      this.more,
      this.noMoreThink,
      this.noMoreSureParam,
      this.noMore,
      this.fg_set,
      this.notNow,
      this.noMoreParam,
      this.moreParam,
      this.noMoreThinkParam,
      this.eventId,
      this.expoInfo,
      this.eventParam});

  MaiDian.fromJson(Map<String, dynamic> json) {
    moreActivity = json['moreActivity'] != null
        ? new ExpoMta.fromJson(json['moreActivity'])
        : null;
    notNowParam = json['notNowParam']?.toString();
    setParam = json['setParam']?.toString();
    noMoreSure = json['noMoreSure']?.toString();
    more = json['more']?.toString();
    noMoreThink = json['noMoreThink']?.toString();
    noMoreSureParam = json['noMoreSureParam']?.toString();
    noMore = json['noMore']?.toString();
    fg_set = json['set']?.toString();
    notNow = json['notNow']?.toString();
    noMoreParam = json['noMoreParam']?.toString();
    moreParam = json['moreParam']?.toString();
    noMoreThinkParam = json['noMoreThinkParam']?.toString();
    eventId = json['eventId']?.toString();
    expoInfo = json['expoInfo']?.toString();
    eventParam = json['eventParam']?.toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.moreActivity != null) {
      data['moreActivity'] = this.moreActivity.toJson();
    }
    data['notNowParam'] = this.notNowParam;
    data['setParam'] = this.setParam;
    data['noMoreSure'] = this.noMoreSure;
    data['more'] = this.more;
    data['noMoreThink'] = this.noMoreThink;
    data['noMoreSureParam'] = this.noMoreSureParam;
    data['noMore'] = this.noMore;
    data['set'] = this.fg_set;
    data['notNow'] = this.notNow;
    data['noMoreParam'] = this.noMoreParam;
    data['moreParam'] = this.moreParam;
    data['noMoreThinkParam'] = this.noMoreThinkParam;
    data['eventId'] = this.eventId;
    data['expoInfo'] = this.expoInfo;
    data['eventParam'] = this.eventParam;
    return data;
  }
}

class OrderList {
  String darkImage;
  String redDotType;
  JumpInfo jumpInfo;
  Title title;
  ClickMta clickMta;
  String encStr;
  String safeImage;
  String value;
  String updateRedDotTime;
  Title subtitle;
  String functionId;
  String enc;
  bool isFirstComment;

  OrderList(
      {this.darkImage,
      this.redDotType,
      this.jumpInfo,
      this.title,
      this.clickMta,
      this.encStr,
      this.safeImage,
      this.value,
      this.updateRedDotTime,
      this.subtitle,
      this.functionId,
      this.enc,
      this.isFirstComment});

  OrderList.fromJson(Map<String, dynamic> json) {
    darkImage = json['darkImage']?.toString();
    redDotType = json['redDotType']?.toString();
    jumpInfo = json['jumpInfo'] != null
        ? new JumpInfo.fromJson(json['jumpInfo'])
        : null;
    title = json['title'] != null ? new Title.fromJson(json['title']) : null;
    clickMta = json['clickMta'] != null
        ? new ClickMta.fromJson(json['clickMta'])
        : null;
    encStr = json['encStr']?.toString();
    safeImage = json['safeImage']?.toString();
    value = json['value']?.toString();
    updateRedDotTime = json['updateRedDotTime']?.toString();
    subtitle =
        json['subtitle'] != null ? new Title.fromJson(json['subtitle']) : null;
    functionId = json['functionId']?.toString();
    enc = json['enc']?.toString();
    isFirstComment = json['isFirstComment'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['darkImage'] = this.darkImage;
    data['redDotType'] = this.redDotType;
    if (this.jumpInfo != null) {
      data['jumpInfo'] = this.jumpInfo.toJson();
    }
    if (this.title != null) {
      data['title'] = this.title.toJson();
    }
    if (this.clickMta != null) {
      data['clickMta'] = this.clickMta.toJson();
    }
    data['encStr'] = this.encStr;
    data['safeImage'] = this.safeImage;
    data['value'] = this.value;
    data['updateRedDotTime'] = this.updateRedDotTime;
    if (this.subtitle != null) {
      data['subtitle'] = this.subtitle.toJson();
    }
    data['functionId'] = this.functionId;
    data['enc'] = this.enc;
    data['isFirstComment'] = this.isFirstComment;
    return data;
  }
}

class WalletList {
  String redDotType;
  String darkImage;
  JumpInfo jumpInfo;
  ClickMta clickMta;
  Title title;
  String encStr;
  String numContent;
  String safeImage;
  Title subtitle;
  String updateRedDotTime;
  String contentType;
  String functionId;
  ExpoMta expoMta;
  String enc;
  String supportHide;

  WalletList(
      {this.redDotType,
      this.darkImage,
      this.jumpInfo,
      this.clickMta,
      this.title,
      this.encStr,
      this.numContent,
      this.safeImage,
      this.subtitle,
      this.updateRedDotTime,
      this.contentType,
      this.functionId,
      this.expoMta,
      this.enc,
      this.supportHide});

  WalletList.fromJson(Map<String, dynamic> json) {
    redDotType = json['redDotType']?.toString();
    darkImage = json['darkImage']?.toString();
    jumpInfo = json['jumpInfo'] != null
        ? new JumpInfo.fromJson(json['jumpInfo'])
        : null;
    clickMta = json['clickMta'] != null
        ? new ClickMta.fromJson(json['clickMta'])
        : null;
    title = json['title'] != null ? new Title.fromJson(json['title']) : null;
    encStr = json['encStr']?.toString();
    numContent = json['numContent']?.toString();
    safeImage = json['safeImage']?.toString();
    subtitle =
        json['subtitle'] != null ? new Title.fromJson(json['subtitle']) : null;
    updateRedDotTime = json['updateRedDotTime']?.toString();
    contentType = json['contentType']?.toString();
    functionId = json['functionId']?.toString();
    expoMta =
        json['expoMta'] != null ? new ExpoMta.fromJson(json['expoMta']) : null;
    enc = json['enc']?.toString();
    supportHide = json['supportHide']?.toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['redDotType'] = this.redDotType;
    data['darkImage'] = this.darkImage;
    if (this.jumpInfo != null) {
      data['jumpInfo'] = this.jumpInfo.toJson();
    }
    if (this.clickMta != null) {
      data['clickMta'] = this.clickMta.toJson();
    }
    if (this.title != null) {
      data['title'] = this.title.toJson();
    }
    data['encStr'] = this.encStr;
    data['numContent'] = this.numContent;
    data['safeImage'] = this.safeImage;
    if (this.subtitle != null) {
      data['subtitle'] = this.subtitle.toJson();
    }
    data['updateRedDotTime'] = this.updateRedDotTime;
    data['contentType'] = this.contentType;
    data['functionId'] = this.functionId;
    if (this.expoMta != null) {
      data['expoMta'] = this.expoMta.toJson();
    }
    data['enc'] = this.enc;
    data['supportHide'] = this.supportHide;
    return data;
  }
}
