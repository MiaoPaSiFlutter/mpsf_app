import 'package:flutter/material.dart';
import 'package:mpsf_package_common/mpsf_package_common.dart';


class MpsfCategoryScreen extends StatefulWidget {
  MpsfCategoryScreen({Key key}) : super(key: key);

  @override
  _MpsfCategoryScreenState createState() => _MpsfCategoryScreenState();
}

class _MpsfCategoryScreenState extends State<MpsfCategoryScreen>
    with
        AutomaticKeepAliveClientMixin,
        WidgetsBindingObserver,
        MpsfCommonFunction {

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('分类'),
      ),
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red)
        ),
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