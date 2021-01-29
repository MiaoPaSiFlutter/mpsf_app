import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MpsfLoadingWidget extends StatelessWidget {
  final String name;
  const MpsfLoadingWidget({
    Key key,
    this.name = "assets/lottiefiles/material_wave_loading.json",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      // color: Theme.of(context).scaffoldBackgroundColor,
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        //背景Colors.transparent 透明
        color: Colors.black12,
      ),
      child: Center(
        child: Container(
          width: 100,
          height: 100,
          child: Lottie.asset(this.name),
        ),
      ),
    );
  }
}
