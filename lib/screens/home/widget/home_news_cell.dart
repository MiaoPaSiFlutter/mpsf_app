import 'package:flutter/material.dart';
import 'package:mpsf_app/screens/home/model/home_news_list_model.dart';
import 'package:mpsf_package_common/mpsf_package_common.dart';

class HomeNewsCell extends StatelessWidget {
  final HomeNewsListModel model;
  final VoidCallback callback;

  const HomeNewsCell({Key key, this.model, this.callback}) : super(key: key);

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
    String avatar = this.model.topicIcon;
    return Padding(
        padding: EdgeInsets.only(top: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                this.model.summary ?? "",
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF333333).withAlpha(200)),
              ),
            ),
            MpsfImageView(avatar, width: 80, height: 60),
          ],
        ));
  }

  Widget _buildTool(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Text(
                  "${this.model.diggCount} 赞   ",
                  style: TextStyle(fontSize: 11, color: Colors.grey),
                ),
                Text(
                  "${this.model.commentCount} 评论   ",
                  style: TextStyle(fontSize: 11, color: Colors.grey),
                ),
                Text(
                  "${this.model.viewCount} 浏览   ",
                  style: TextStyle(fontSize: 11, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
