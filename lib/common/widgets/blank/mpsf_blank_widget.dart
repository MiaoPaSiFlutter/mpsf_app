import 'package:flutter/material.dart';
import 'package:mpsf_package_common/mpsf_package_common.dart';

class MpsfBlankWidget extends StatelessWidget {
  final String blankIconPath;
  final String blankTitle;
  final String blankDescription;
  const MpsfBlankWidget({
    Key key,
    this.blankIconPath,
    this.blankTitle,
    this.blankDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 100),
      color: Theme.of(context).scaffoldBackgroundColor,
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              child: MpsfImageView(this.blankIconPath),
            ),
            SizedBox(height: 15),
            Container(
              child: Text(
                this.blankTitle ?? "",
                style: Theme.of(context).textTheme.subtitle1,
              ),
            )
          ],
        ),
      ),
    );
  }
}
