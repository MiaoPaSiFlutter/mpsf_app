import 'package:flutter/material.dart';
import 'package:mpsf_package_common/mpsf_package_common.dart';
import 'screens/item_blogposts.dart';
import 'screens/item_blogs.dart';
import 'screens/item_hotweek.dart';
import 'screens/item_news.dart';
import 'screens/item_recommended.dart';

class MpsfHomeScreen extends StatefulWidget {
  MpsfHomeScreen({Key key}) : super(key: key);

  @override
  _MpsfHomeScreenState createState() => _MpsfHomeScreenState();
}

class _MpsfHomeScreenState extends State<MpsfHomeScreen>
    with
        AutomaticKeepAliveClientMixin,
        SingleTickerProviderStateMixin,
        WidgetsBindingObserver,
        MpsfCommonFunction {
  TabController _tabController;
  PageController _pageController;
  final List<Widget> tabBodies = [
    ItemBlogs(),
    ItemBlogPosts(),
    ItemNews(),
    ItemHotweek(),
    ItemRecommended(),
  ];
  final List<Tab> tabTitles = [
    Tab(text: "博客"),
    Tab(text: "精华"),
    Tab(text: "新闻"),
    Tab(text: "本周热门"),
    Tab(text: "推荐")
  ];

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: getNavigationBar(context),
      ),
      body: Container(
        height: double.infinity,
        child: PageView(
          controller: _pageController,
          children: tabBodies,
          onPageChanged: (index) {
            _tabController.animateTo(index);
          },
        ),
      ),
    );
  }

  Widget getNavigationBar(BuildContext context) {
    return Container(
      width: double.infinity,
      height: getNavigationBarHeight(),
      child: TabBar(
        indicatorColor: Colors.black,
        indicatorSize: TabBarIndicatorSize.label,
        controller: _tabController,
        indicatorPadding: EdgeInsets.all(8),
        labelColor: Colors.black,
        unselectedLabelColor: Colors.grey,
        isScrollable: true,
        onTap: ((value) {
          _pageController.jumpTo(MediaQuery.of(context).size.width * value);
        }),
        tabs: tabTitles,
      ),
    );
  }

  ///////////////////////////////////////////
  ///////////////////////////////////////////
  ///////////////////////////////////////////
  ///////////////////////////////////////////
  @override
  void onFetchData() {
    // TODO: implement onFetchData
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  void initState() {
    initBaseCommon(this);
    log("initState");
    super.initState();
    _tabController = TabController(length: tabBodies.length, vsync: this);
    _pageController = PageController();
  }

  @override
  void didChangeDependencies() {
    log("didChangeDependencies");
    super.didChangeDependencies();
  }

  @override
  void deactivate() {
    log("deactivate");
    super.deactivate();
  }

  @override
  void dispose() {
    log("dispose");
    super.dispose();
  }
}