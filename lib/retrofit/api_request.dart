import 'package:dio_http/dio_http.dart';
import 'package:flutter/material.dart';
import 'package:vlnt_flutter/scopedmodels/login_model.dart';
import 'package:vlnt_flutter/scopedmodels/news_model.dart';
import 'package:vlnt_flutter/scopedmodels/user_model.dart';
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
      NewsModel().newsLoad();
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

  news(String token, int page, int limit) async {
    bool event = false;
    dio.options.headers["Content-Type"] = "application/json";
    if (token == null){
      return;
    }
    try {
      await client.getNewsAll({"page": page, "limit": limit,
        "area": 0, "team": 0, "lang": "ru", "block": 0}).then((response) {
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