import 'package:flutter/material.dart';
import 'package:mpsf_app/common/net/network.dart';
import 'package:mpsf_app/common/widgets/blank/mpsf_empty_widget.dart';
import 'package:mpsf_app/screens/blogdetail/jd_blog_detail_screen.dart';
import 'package:mpsf_app/screens/home/model/jd_home_cell_news.dart';
import 'package:mpsf_app/screens/home/model/jd_home_news_list_model.dart';
import 'package:mpsf_package_common/mpsf_package_common.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:toast/toast.dart';

/*
  新闻
*/
class ItemNews extends StatefulWidget {
  ItemNews({Key key}) : super(key: key);

  @override
  _ItemNewsState createState() => _ItemNewsState();
}

class _ItemNewsState extends State<ItemNews>
    with
        AutomaticKeepAliveClientMixin,
        WidgetsBindingObserver,
        MpsfCommonFunction {
  List _items = [];
  int _page = 1;
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.red)),
        child: MpsfBodyContainer(
          blankStatus: blankStatus,
          blankIconPath: blankIconPath,
          blankTitle: blankTitle,
          blankDescription: blankDescription,
          onTapBlank: () {
            onFetchData();
          },
          bodyWidget: _buildBodyWidget(),
        ),
      ),
    );
  }

  ///////////////////////////////////////////
  /// 请求
  ///////////////////////////////////////////
  Widget _buildBodyWidget() {
    return SmartRefresher(
      enablePullDown: true,
      enablePullUp: true,
      controller: _refreshController,
      onRefresh: _onRefresh,
      onLoading: _onLoading,
      child: ListView.separated(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        itemCount: _items.length,
        itemBuilder: (context, index) {
          JdHomeNewsListModel model = _items[index];
          return JdHomeCellNews(
            model: model,
            callback: () {
              log("${model.toJson}");
            },
          );
        },
        separatorBuilder: (context, index) {
          return Container(color: MpsfHexColor('#E8EDFE'), height: 1);
        },
      ),
    );
  }

  ///////////////////////////////////////////
  /// 请求
  ///////////////////////////////////////////
  void _onRefresh() async {
    _page = 1;
    await loadData();
    _refreshController.refreshCompleted();
  }

  void _onLoading() async {
    _page++;
    await loadData();
    _refreshController.loadComplete();
  }

  Future<void> loadData() async {
    setState(() {
      blankStatus = MpsfBlankStatus.loading;
    });
    ApiService.fetchApi(ApiType.Home_news, page: _page, pageSize: 30)
        .then((respM) {
      if (_page == 1) {
        _items.clear();
      }
      if (respM.data != null && respM.data is List) {
        for (var map in respM.data) {
          JdHomeNewsListModel model = JdHomeNewsListModel.fromJson(map);
          _items.add(model);
        }
      }

      setState(() {
        if (respM.success) {
          blankStatus = MpsfBlankStatus.ready;
        } else {
          blankStatus = MpsfBlankStatus.error;
        }
        if (respM.error != null && respM.error.message != null) {
          Toast.show(respM.error.message, context);
        }
      });
    });
  }

  ///////////////////////////////////////////
  ///////////////////////////////////////////
  ///////////////////////////////////////////
  ///////////////////////////////////////////
  @override
  void onFetchData() {
    // TODO: implement onFetchData
    _onRefresh();
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  void initState() {
    initBaseCommon(this);
    log("initState");
    super.initState();
    onFetchData();
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
