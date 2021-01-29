import 'package:flutter/material.dart';
import 'package:mpsf_app/common/event_bus/event_bus_header.dart';
import 'package:mpsf_app/common/event_bus/event_bus_utils.dart';
import 'package:mpsf_package_common/mpsf_package_common.dart';

import 'jd_tabbar_controller_screen.dart';
import 'login/mpsf_login_screen.dart';

class JdWindowScreen extends StatefulWidget {
  JdWindowScreen({Key key}) : super(key: key);

  @override
  _JdWindowScreenState createState() => _JdWindowScreenState();
}

class _JdWindowScreenState extends State<JdWindowScreen> {
  var appEvent;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: JdTabbarControllerScreen(),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //添加订阅
    appEvent = eventBus.on<AppEvent>((event) {
      if (event.eventType == AppEventType.Login) {
        MpsfNavigatorUtils.pushPage(
            context: context, targetPage: MpsfLoginScreen());
      }
    });
  }

  @override
  void dispose() {
    eventBus.off(appEvent);
    super.dispose();
  }
}
