import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mpsf_app/common/widgets/blank/mpsf_empty_widget.dart';
import 'package:mpsf_package_common/mpsf_package_common.dart';
import 'package:webview_flutter/webview_flutter.dart';

class JdBlogDetailScreen extends StatefulWidget {
  final String initialUrl;
  JdBlogDetailScreen({Key key, this.initialUrl}) : super(key: key);

  @override
  _JdBlogDetailScreenState createState() => _JdBlogDetailScreenState();
}

class _JdBlogDetailScreenState extends State<JdBlogDetailScreen>
    with WidgetsBindingObserver, MpsfCommonFunction {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('详情'),
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
      width: double.infinity,
      height: double.infinity,
      child: WebView(
        initialUrl: "https://www.baidu.com/",
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          _controller.complete(webViewController);
        },
        onPageStarted: (String url) {
          print('Page started loading: $url');
          blankStatus = MpsfBlankStatus.loading;
          setState(() {});
        },
        onPageFinished: (String url) {
          print('Page finished loading: $url');
          blankStatus = MpsfBlankStatus.ready;
          setState(() {});
        },
        onWebResourceError: (error) {
          blankStatus = MpsfBlankStatus.error;
          setState(() {});
        },
        gestureNavigationEnabled: true,
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
