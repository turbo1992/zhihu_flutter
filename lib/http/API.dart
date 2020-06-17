import 'package:flutter/material.dart';
import 'package:zhihuflutter/http/http_request.dart';

typedef RequestCallBack<T> = void Function(T value);


class API {
  static const BASE_URL = 'http://112.74.55.99/api';

  //文章列表
  static const String ARTICLE_LIST = '/v1/public/articleList';


  var _request = HttpRequest(API.BASE_URL);

  Future<dynamic> _query(String uri, String value) async {
    final result = await _request
        .get('$uri$value?apikey=0b2bdeda43b5688921839c8ecb20399b');
    return result;
  }

  //获取文章列表
  void getArticleList(RequestCallBack requestCallBack, {count = 250, res}) async {
    final Map result = await _request.get(ARTICLE_LIST);
//    var resultList = result['subjects'];
//    List<Subject> list =
//    resultList.map<Subject>((item) => Subject.fromMap(item)).toList();
    requestCallBack(result);
  }
}