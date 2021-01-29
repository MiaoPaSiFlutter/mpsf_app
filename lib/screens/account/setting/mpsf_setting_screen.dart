import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mpsf_app/common/widgets/blank/mpsf_empty_widget.dart';
import 'package:mpsf_app/common/widgets/cell/mpsf_cell.dart';
import 'package:mpsf_app/screens/login/mpsf_login_screen.dart';
import 'package:group_list_view/group_list_view.dart';
import 'package:mpsf_package_common/mpsf_package_common.dart';

class MpsfSettingScreen extends StatefulWidget {
  MpsfSettingScreen({Key key}) : super(key: key);

  @override
  _MpsfSettingScreenState createState() => _MpsfSettingScreenState();
}

class _MpsfSettingScreenState extends State<MpsfSettingScreen>
    with WidgetsBindingObserver, MpsfCommonFunction {
  List _sections = [
    [
      {"title": "账号管理", "subtitle": ""},
      {"title": "账号与安全", "subtitle": ""}
    ],
    [
      {"title": "青少年模式", "subtitle": ""},
    ],
    [
      {"title": "会员专属设置", "subtitle": ""},
    ],
    [
      {"title": "推送通知设置", "subtitle": ""},
      {"title": "屏蔽设置", "subtitle": ""},
      {"title": "隐私设置", "subtitle": ""},
      {"title": "通用设置", "subtitle": ""},
    ],
    [
      {"title": "客服中心", "subtitle": ""},
      {"title": "关于博客园", "subtitle": ""},
    ],
    [
      {"title": "清除缓存", "subtitle": ""},
      {"title": "护眼模式", "subtitle": ""},
    ],
    [
      {"title": "退出", "subtitle": ""},
    ],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('设置'),
        leading: getBackItem(),
      ),
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
  /// Widget
  ///////////////////////////////////////////
  Widget _buildBodyWidget() {
    return Container(
      height: double.infinity,
      color: Theme.of(context).dividerColor,
      child: GroupListView(
        padding: EdgeInsets.all(0),
        sectionsCount: _sections.length,
        countOfItemInSection: (int section) {
          return _sections[section].length;
        },
        itemBuilder: _itemBuilder,
        groupHeaderBuilder: (BuildContext context, int section) {
          return SizedBox(height: 10);
        },
        separatorBuilder: (context, index) {
          return SizedBox(height: 1);
        },
        sectionSeparatorBuilder: (context, section) => SizedBox(height: 1),
      ),
    );
  }

  Widget _itemBuilder(BuildContext context, IndexPath index) {
    Map cellData = _sections[index.section][index.index];
    if (cellData["title"] == "退出") {
      return Material(
        child: InkWell(
          child: Container(
            width: double.infinity,
            height: 44,
            child: Center(
              child: Text(
                cellData["title"],
                style: TextStyle(color: Colors.red),
              ),
            ),
          ),
          onTap: () {},
        ),
      );
    } else {
      String title = cellData["title"] ?? "";
      return Material(
        child: InkWell(
          child: MpsfCell(
            title: title,
          ),
          onTap: () {
            if (title == "账号管理") {
              MpsfNavigatorUtils.pushPage(
                  context: context, targetPage: MpsfLoginScreen());
            }
          },
        ),
      );
    }
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
  void initState() {
    initBaseCommon(this);
    log("initState");
    super.initState();
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
