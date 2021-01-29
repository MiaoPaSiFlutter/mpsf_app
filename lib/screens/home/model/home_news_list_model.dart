class HomeNewsListModel {
  int id;
  String title;
  String summary;
  int topicId;
  String topicIcon;
  int viewCount;
  int commentCount;
  int diggCount;
  String dateAdded;

  HomeNewsListModel(
      {this.id,
      this.title,
      this.summary,
      this.topicId,
      this.topicIcon,
      this.viewCount,
      this.commentCount,
      this.diggCount,
      this.dateAdded});

  HomeNewsListModel.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    title = json['Title'];
    summary = json['Summary'];
    topicId = json['TopicId'];
    topicIcon = json['TopicIcon'];
    viewCount = json['ViewCount'];
    commentCount = json['CommentCount'];
    diggCount = json['DiggCount'];
    dateAdded = json['DateAdded'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['Title'] = this.title;
    data['Summary'] = this.summary;
    data['TopicId'] = this.topicId;
    data['TopicIcon'] = this.topicIcon;
    data['ViewCount'] = this.viewCount;
    data['CommentCount'] = this.commentCount;
    data['DiggCount'] = this.diggCount;
    data['DateAdded'] = this.dateAdded;
    return data;
  }
}

