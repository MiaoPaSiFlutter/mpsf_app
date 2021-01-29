import 'package:flutter/material.dart';

import 'mpsf_blank_widget.dart';
import 'mpsf_loading_widget.dart';

class MpsfBodyContainerStatus {
  static const int ready = 0; //就绪
  static const int loading = 1; //请求中
  static const int noData = 2; //空数据
  static const int error = 3; //请求错误
}

class MpsfBodyContainer extends StatefulWidget {
  final int blankStatus;
  final String blankIconPath;
  final String blankTitle;
  final String blankDescription;
  final Widget bodyWidget;
  final VoidCallback onTapBlank;
  MpsfBodyContainer({
    Key key,
    this.blankStatus,
    this.blankIconPath,
    this.blankTitle,
    this.blankDescription,
    this.bodyWidget,
    this.onTapBlank,
  }) : super(key: key);

  @override
  _MpsfBodyContainerState createState() => _MpsfBodyContainerState();
}

class _MpsfBodyContainerState extends State<MpsfBodyContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          widget.bodyWidget,
          InkWell(
            child: _buildBlank(),
            onTap: widget.onTapBlank,
          )
        ],
      ),
    );
  }

  Widget _buildBlank() {
    if (widget.blankStatus == MpsfBodyContainerStatus.ready) {
      return Container(width: 0, height: 0);
    } else if (widget.blankStatus == MpsfBodyContainerStatus.loading) {
      return MpsfLoadingWidget();
    } else if (widget.blankStatus == MpsfBodyContainerStatus.noData) {
      return MpsfBlankWidget(
        blankIconPath: "userful_images/ic_error_empty",
        blankTitle: "暂无数据",
      );
    } else if (widget.blankStatus == MpsfBodyContainerStatus.error) {
      return MpsfBlankWidget(
        blankIconPath: "userful_images/ic_error_network",
        blankTitle: "请求失败",
      );
    }
    return Container(width: 0, height: 0);
  }
}
