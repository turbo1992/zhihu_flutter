import 'package:flutter/material.dart';
import '../global_config.dart';
import '../http/API.dart';
import 'package:zhihuflutter/http/http_request.dart';
import '../model/article_entity.dart';

class IdeaPage extends StatefulWidget {

  @override
  _IdeaPageState createState() => new _IdeaPageState();

}

class _IdeaPageState extends State<IdeaPage> {

  var _request = HttpRequest(API.BASE_URL);
  var _api = API();
  var _articleModel;

  @override
  void initState() {
    super.initState();
    print("initState...");
    requestAPI();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text('想法'),
          ),
          body: new Center(
              child: null
          ),
        ),
        theme: GlobalConfig.themeData,
        debugShowCheckedModeBanner: false
    );
  }

  void requestAPI() async {

    Future(() {
      return _request.get('/v1/public/articleList');
    }).then((result) {
      _articleModel = ArticleEntity.fromJson(result);
      print(_articleModel.data.total);
      print("printed...");
      _articleModel.data.list.forEach((item) {
        print(item.title);
      });
    });
  }

}