import 'package:dio_http/dio_http.dart';
import 'package:flutter/material.dart';
import 'package:vlnt_flutter/scopedmodels/login_model.dart';
import 'package:vlnt_flutter/scopedmodels/news_model.dart';
import 'package:vlnt_flutter/scopedmodels/user_model.dart';
import 'package:vlnt_flutter/server/repository.dart';
import 'package:vlnt_flutter/viewmodels/impl/form_view_model_impl.dart';
import 'package:vlnt_flutter/viewmodels/impl/user_view_model_impl.dart';

import 'api.dart';

class ApiRequest {

  ApiRequest._();
  static final ApiRequest _apiRequest = ApiRequest._();

  factory ApiRequest() {
    return _apiRequest;
  }

  static Dio dio = Dio();
  static RestClient client = RestClient(dio);

  static FormViewModelImpl viewModel = FormViewModelImpl();
  static UserViewModelImpl userModel = UserViewModelImpl();

  login(String login, String password) async {
    bool event = false;
    debugPrint("login is Start! login = $login || password = $password");
    if (!login.isNotEmpty && !password.isNotEmpty) {
      return;
    }
    dio.options.headers["Content-Type"] = "application/json";
    dio.options.headers["Access-Control-Allow-Origin"] = "*";
    dio.options.headers["Access-Control-Allow-Methods"] = "POST, OPTIONS";
    client = RestClient(dio);
    try {
      await client.signin({"username": login, "password": password}).then(
              (response) {
            if (response != null) {
              userModel.setToken(response.accessToken);
              debugPrint(response.accessToken);
              event = true;
            }},
          onError: (error) {
            debugPrint("Error: ${error.toString()}");
          });
    } catch (e) {
      debugPrint(e.toString());
    }
    viewModel.inputLogin.add(event);
    debugPrint("event = $event");
    if (event) {
      viewModel.dispose();
      LoginModel().setLogin(event);
      userModel.getProfile();
      NewsModel().newsAll();
    }
  }

  userProfile(String token) async {
    bool event = false;
    dio.options.headers["Content-Type"] = "application/json";
    if (token == null){
      return;
    }
    try {
      await client.getProfile(token).then((response) {
            if (response != null) {
              debugPrint(response.firstName);
              userModel.setUser(response);
              event = true;
            }},
          onError: (error) {
            debugPrint("Error: ${error.toString()}");
          });
    } catch (e) {
      debugPrint(e.toString());
    }
    userModel.inputProfile.add(event);
    debugPrint("event = $event");
    if (event) {
      userModel.dispose();
      UserModel().setUserLoad(event);
    }
  }

  news(String token, int page, int limit, int area, int team, int block) async {
    bool event = false;
    if (token == null){
      return;
    }
    try {
      Repository clint = new Repository();
      await clint.getNewsAll(token: token, body: {"page": page.toInt(), "limit": limit.toInt(),
        "area": area.toInt(), "team": team.toInt(), "lang": "ru", "block": block.toInt()}).then((response) {
        if (response != null) {
          debugPrint(response.toString());
          NewsModel().setNews(response);
          event = true;
        }},
          onError: (error) {
            debugPrint("Error News: ${error.toString()}");
          });
    } catch (e) {
      debugPrint(e.toString());
    }
    NewsModel().setNewsLoad(event);
    debugPrint("event = $event");
  }
}