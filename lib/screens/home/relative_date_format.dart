import 'package:common_utils/common_utils.dart';
import 'package:flutter/material.dart';

class RelativeDateFormat {
  // 时间戳转格式
  static String getTimeLine(BuildContext context, String postTime) {
    String Ttime = DateTime.parse(postTime).toString();
    int timeMs = DateUtil.getDateMsByTimeStr(Ttime);
    return TimelineUtil.format(timeMs,
        locale: Localizations.localeOf(context).languageCode,
        dayFormat: DayFormat.Common);
  }
}
