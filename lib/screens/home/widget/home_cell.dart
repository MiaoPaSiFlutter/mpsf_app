
import 'package:flutter/material.dart';
import 'package:mpsf_app/screens/home/model/home_list_model.dart';
import 'package:mpsf_app/screens/home/relative_date_format.dart';
import 'package:mpsf_package_common/mpsf_package_common.dart';

class HomeCell extends StatelessWidget {
  final HomeListModel model;
  final VoidCallback callback;

  const HomeCell({Key key, this.model, this.callback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.callback,
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildTitle(context),
            _buildDescription(context),
            _buildTool(context),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 0),
      child: Text(this.model.title ?? "",
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xFF333333))),
    );
  }

  Widget _buildDescription(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5),
      child: Text(
        this.model.description ?? "",
        maxLines: 3,
        style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Color(0xFF333333).withAlpha(200)),
      ),
    );
  }

  Widget _buildTool(BuildContext context) {
    String avatar = this.model.avatar;
    return Container(
      padding: EdgeInsets.only(top: 5),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                MpsfImageView(avatar, width: 25, height: 25),
                Padding(padding: EdgeInsets.only(left: 5)),
                Text(
                  this.model.author ?? "",
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF333333),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 5)),
                Text(
                  RelativeDateFormat.getTimeLine(
                      context, this.model.postDate ?? ""),
                  style: TextStyle(
                    fontSize: 10,
                    color: Color(0xFF999999),
                  ),
                ),
              ],
            ),
          ),
          Text(
            "评论：${this.model.commentCount}",
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w500,
              color: Color(0xFF333333),
            ),
          ),
        ],
      ),
    );
  }
}