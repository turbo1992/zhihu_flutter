class ArticleEntity {
  String msg;
  String code;
  ArticleDataEntity data;

  ArticleEntity({this.msg, this.code, this.data});

  ArticleEntity.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    code = json['code'];
    data = json['data'] != null ? new ArticleDataEntity.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['msg'] = this.msg;
    data['code'] = this.code;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class ArticleDataEntity {
  int total;
  String marker;
  bool isLast;
  List<ArticleInfoEntity> list;

  ArticleDataEntity({this.total, this.marker, this.isLast, this.list});

  ArticleDataEntity.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    marker = json['marker'];
    isLast = json['isLast'];
    if (json['list'] != null) {
      list = new List<ArticleInfoEntity>();
      json['list'].forEach((v) {
        list.add(new ArticleInfoEntity.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total'] = this.total;
    data['marker'] = this.marker;
    data['isLast'] = this.isLast;
    if (this.list != null) {
      data['list'] = this.list.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ArticleInfoEntity {
  int id;
  String create_time;
  String title;
  String image_url;
  String content;

  ArticleInfoEntity({this.id, this.create_time, this.title, this.image_url, this.content});

  ArticleInfoEntity.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    create_time = json['create_time'];
    title = json['title'];
    image_url = json['image_url'];
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['create_time'] = this.create_time;
    data['title'] = this.title;
    data['image_url'] = this.image_url;
    data['content'] = this.content;
    return data;
  }
}