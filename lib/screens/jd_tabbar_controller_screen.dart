import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mpsf_package_common/mpsf_package_common.dart';

import 'home/mpsf_home_screen.dart';
import 'category/mpsf_category_screen.dart';
import 'discover/mpsf_discover_screen.dart';
import 'shopcar/mpsf_shopcar_screen.dart';
import 'account/mpsf_account_screen.dart';

class JdTabbarControllerScreen extends StatefulWidget {
  JdTabbarControllerScreen({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _JdTabbarControllerScreenState();
  }
}

class _JdTabbarControllerScreenState extends State<JdTabbarControllerScreen> {
  int _currentIndex = 0;
  Map tabBarInfos = {
    0: {
      "title": "首页",
      "norImg": "images/Tabbar_Feed_Highlight_28x28_",
      "selImg": "images/Tabbar_Feed_Normal_28x28_",
    },
    1: {
      "title": "分类",
      "norImg": "images/Tabbar_Shop_Highlight_28x28_",
      "selImg": "images/Tabbar_Shop_Normal_28x28_",
    },
    2: {
      "title": "发现",
      "norImg": "images/Tabbar_Discover_Highlight_28x28_",
      "selImg": "images/Tabbar_Discover_Normal_28x28_",
    },
    3: {
      "title": "购物车",
      "norImg": "images/Tabbar_Notifications_Highlight_28x28_",
      "selImg": "images/Tabbar_Notifications_Normal_28x28_",
    },
    4: {
      "title": "我的",
      "norImg": "images/Tabbar_More_Highlight_28x28_",
      "selImg": "images/Tabbar_More_Normal_28x28_",
    }
  };
  List<Widget> _bottomNavPages = List(); // 底部导航栏各个可切换页面组
  final _pageController = PageController();

  @override
  void initState() {
    _bottomNavPages
      ..add(MpsfHomeScreen())
      ..add(MpsfCategoryScreen())
      ..add(MpsfDiscoverScreen())
      ..add(MpsfShopcarScreen())
      ..add(MpsfAccountScreen());
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _bottomNavPages,
        physics: NeverScrollableScrollPhysics(), // 禁止滑动
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _buildBotomItem(0),
            _buildBotomItem(1),
            _buildBotomItem(2),
            _buildBotomItem(3),
            _buildBotomItem(4),
          ],
        ),
      ),
    );
  }

  /**
   * @param selectIndex 当前选中的页面
   * @param index 每个条目对应的角标
   * @param iconData 每个条目对就的图标
   * @param title 每个条目对应的标题
   */
  _buildBotomItem(int index) {
    //未选中状态的样式
    TextStyle textStyle = TextStyle(fontSize: 11.0, color: Colors.grey);
    Color iconColor = Colors.grey;
    double iconSize = 28;
    String imageName = tabBarInfos[index]["norImg"];
    String title = tabBarInfos[index]["title"];
    EdgeInsetsGeometry padding = EdgeInsets.only(top: 6.0);

    if (_currentIndex == index) {
      //选中状态的文字样式
      textStyle = TextStyle(fontSize: 11.0, color: Colors.black);
      //选中状态的按钮样式
      iconColor = Colors.black;
      iconSize = 28;
      imageName = tabBarInfos[index]["selImg"];
      padding = EdgeInsets.only(top: 6.0);
    }
    Widget padItem = Padding(
      padding: padding,
      child: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                child: Image.asset(
                  MpsfImageUtils.getImgPath(imageName),
                  color: iconColor,
                  width: iconSize,
                  height: iconSize,
                ),
              ),
              Text(title, style: textStyle)
            ],
          ),
        ),
      ),
    );

    Widget item = Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: () {
          if (index != _currentIndex) {
            setState(() {
              _currentIndex = index;
              _pageController.jumpToPage(index);
            });
          }
        },
        child: SizedBox(height: 52, child: padItem),
      ),
    );
    return item;
  }
}
