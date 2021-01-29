class HomeListModel {
  int id;
  String title;
  String url;
  String description;
  String author;
  String blogApp;
  String avatar;
  String postDate;
  int viewCount;
  int commentCount;
  int diggCount;

  HomeListModel(
      {this.id,
      this.title,
      this.url,
      this.description,
      this.author,
      this.blogApp,
      this.avatar,
      this.postDate,
      this.viewCount,
      this.commentCount,
      this.diggCount});

  HomeListModel.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    title = json['Title'];
    url = json['Url'];
    description = json['Description'];
    author = json['Author'];
    blogApp = json['BlogApp'];
    avatar = json['Avatar'];
    postDate = json['PostDate'];
    viewCount = json['ViewCount'];
    commentCount = json['CommentCount'];
    diggCount = json['DiggCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['Title'] = this.title;
    data['Url'] = this.url;
    data['Description'] = this.description;
    data['Author'] = this.author;
    data['BlogApp'] = this.blogApp;
    data['Avatar'] = this.avatar;
    data['PostDate'] = this.postDate;
    data['ViewCount'] = this.viewCount;
    data['CommentCount'] = this.commentCount;
    data['DiggCount'] = this.diggCount;
    return data;
  }
}

