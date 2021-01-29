import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mpsf_app/common/config/config.dart';
import 'package:mpsf_app/common/local/local_storage.dart';
import 'package:mpsf_app/common/manager/app_manager.dart';
import 'package:mpsf_app/common/net/network.dart';
import 'package:mpsf_app/common/widgets/blank/mpsf_empty_widget.dart';
import 'package:mpsf_package_common/mpsf_package_common.dart';
import 'package:toast/toast.dart';
import 'mpsf_login_authorize_screen.dart';

OutlineInputBorder border = const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(color: Colors.red, width: 2.0));
OutlineInputBorder enabledBorder = const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(color: Colors.blue, width: 2.0));
OutlineInputBorder focusedBorder = const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(color: Colors.blue, width: 2.0));

class MpsfLoginScreen extends StatefulWidget {
  MpsfLoginScreen({Key key}) : super(key: key);

  @override
  _MpsfLoginScreenState createState() => _MpsfLoginScreenState();
}

class _MpsfLoginScreenState extends State<MpsfLoginScreen>
    with WidgetsBindingObserver, MpsfCommonFunction {
  ///用来控制  TextField 焦点的获取与关闭
  FocusNode _focusNode = FocusNode();
  TextEditingController _controller = TextEditingController();

  ///
  String _authSuccessInfo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('登录'),
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
        margin: EdgeInsets.all(12),
        height: double.infinity,
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            Text("授权码"),
            Text("授权码为您登录完成后，页面跳转地址后页面显示的授权码"),
            _buildAuthCodeInputWidget(),
            _buildAuthActionWidget(),
            _buildAuthSuccessInfoWidget(),
          ],
        ));
  }

  void getAuthorizeToken() {
    ApiService.getAuthorizeToken(_controller.text).then((ApiResultData respM) {
      if (respM.success) {
        Toast.show("SUCCESS", context);
        String jsonStringB = json.encode(respM.data);
        LocalStorage.save(Config.ACCESS_TOKEN, respM.data["access_token"]);
        LocalStorage.save(Config.TOKEN_INFOS, jsonStringB);
        AppManager().isLogin = true;
        setState(() {
          _authSuccessInfo = jsonStringB;
        });
      } else {
        Toast.show("${respM.error.message}", context);
      }
    });
  }

  //这是一个带有异步延迟操作的方法，首先是进行路由导航至下一个页面，然后延迟操作将返回的值car赋予result，这个result是一个将来值。
  void enterWebToLogin(BuildContext context) async {
    final result = await Navigator.push(context,
        CupertinoPageRoute(builder: (BuildContext context) {
      return MpsfLoginAuthorizeScreen();
    }));

    this._controller.text = '$result'; // 设置初始值
    setState(() {});
  }

  Widget _buildAuthCodeInputWidget() {
    return Container(
      child: TextField(
        focusNode: _focusNode,
        controller: _controller,
        keyboardType: TextInputType.multiline,
        maxLines: null,
        decoration: InputDecoration(
          border: border,
          enabledBorder: enabledBorder,
          focusedBorder: focusedBorder,
        ),
      ),
    );
  }

  Widget _buildAuthSuccessInfoWidget() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("上次授权获取到的信息"),
          Text("$_authSuccessInfo"),
        ],
      ),
    );
  }

  Widget _buildAuthActionWidget() {
    return Container(
      child: Row(
        children: [
          RaisedButton(
            color: Colors.blue,
            highlightColor: Colors.blue[700],
            colorBrightness: Brightness.dark,
            splashColor: Colors.grey,
            child: Text("获取授权码"),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            onPressed: () {
              _focusNode.unfocus();
              enterWebToLogin(context);
            },
          ),
          RaisedButton(
            color: Colors.green,
            highlightColor: Colors.blue[700],
            colorBrightness: Brightness.dark,
            splashColor: Colors.grey,
            child: Text("授权"),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            onPressed: () {
              _focusNode.unfocus();
              LocalStorage.save(Config.AUTHORIZE_CODE, _controller.text);
              getAuthorizeToken();
            },
          ),
        ],
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
