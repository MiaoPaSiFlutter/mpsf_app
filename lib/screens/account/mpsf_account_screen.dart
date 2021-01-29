import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mpsf_package_common/mpsf_package_common.dart';

import 'setting/mpsf_setting_screen.dart';


class MpsfAccountScreen extends StatefulWidget {
  MpsfAccountScreen({Key key}) : super(key: key);

  @override
  _MpsfAccountScreenState createState() => _MpsfAccountScreenState();
}

class _MpsfAccountScreenState extends State<MpsfAccountScreen>
    with
        AutomaticKeepAliveClientMixin,
        WidgetsBindingObserver,
        MpsfCommonFunction {

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("我的"),
        actions: getAppBarActions()
      ),
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red)
        ),
      ),
    );
  }

  ///导航栏返回键
  List<Widget> getAppBarActions() {
    List<Widget> actions = [];
    Widget setting = Container(
      width: getNavigationBarHeight(),
      height: double.infinity,
      child: IconButton(
        onPressed: clickSettingItem,
        icon: Icon(Icons.settings),
      ),
    );

    actions.add(setting);
    return actions;
  }

  void clickSettingItem() {
    log("---clickSettingItem");
    MpsfNavigatorUtils.pushPage(context: context, targetPage: MpsfSettingScreen());
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
