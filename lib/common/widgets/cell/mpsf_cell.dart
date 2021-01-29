import 'package:flutter/material.dart';
import 'package:mpsf_package_common/common_widgets/mpsf_imageview.dart';

class MpsfCell extends StatelessWidget {
  final String title;
  final String subtitle;
  final double height;
  final EdgeInsetsGeometry margin;
  const MpsfCell({
    Key key,
    this.title: "",
    this.subtitle: "",
    this.height: 44,
    this.margin: const EdgeInsets.only(left: 12),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: double.infinity,
      height: height,
      child: Row(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: _buildTitle(),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 12),
              child: Row(
                textDirection: TextDirection.rtl, //右到左排版
                mainAxisSize: MainAxisSize.max, //水平轴宽度大小
                children: [
                  _buildArrow(),
                  Expanded(
                    child: _buildSubTitle(),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return Container(
      // decoration: BoxDecoration(border: Border.all(color: Colors.red)),
      child: Text(
        "$title",
      ),
    );
  }

  Widget _buildSubTitle() {
    return Container(
      // decoration: BoxDecoration(border: Border.all(color: Colors.red)),
      child: Center(
          child: Text(
        "$subtitle",
        overflow: TextOverflow.ellipsis,
      )),
    );
  }

  Widget _buildArrow() {
    return Container(
      // decoration: BoxDecoration(border: Border.all(color: Colors.red)),
      child: IconButton(
        onPressed: () {},
        icon: MpsfLoadAssetImage("images/arrow_right",fit: BoxFit.scaleDown,),
      ),
    );
  }
}
