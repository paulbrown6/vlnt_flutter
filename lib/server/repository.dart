import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:vlnt_flutter/entity/api/news.dart';

const String URL = "http://dev.vlnt.expoforum.ru/api";

abstract class Repository{

  factory Repository() = _Repository;

  Future<List<News>> getNewsAll({required String token, required Map<String, dynamic> body});

}

class _Repository implements Repository {

  _Repository(){}

  @override
  Future<List<News>> getNewsAll({required String token, required Map<String, dynamic> body}) async {
    final _headers = <String, String>{
      'Accept': "application/json",
      'Authorization': "Bearer $token",
    };
    String data = "";
    body.forEach((key, value) {
      data += "$key=$value&";
    });
    final response = await http.get(Uri.parse("$URL/news/list?$data"), headers: _headers);
    if (response.statusCode == 200) {
      debugPrint(jsonDecode(response.body).toString());
      var value = jsonDecode(response.body).map((dynamic i) => News.fromJson(i as Map<String, dynamic>)).toList();
      debugPrint(value.runtimeType.toString());
      List<News> res = [];
      value.forEach((value) => {res.add(value)});
      return res;
    } else {
      debugPrint(response.request!.url.toString());
      debugPrint(response.body);
      throw Exception("failed request");
    }
  }
}