import 'package:dio_http/dio_http.dart';
import 'package:flutter/material.dart';
import 'package:vlnt_flutter/scopedmodels/login_model.dart';
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
    }
  }

  userProfile(String token) async {
    bool event = false;
    dio.options.headers["Content-Type"] = "application/json";
    dio.options.headers["Authorization"] = token;
    if (token == null){
      return;
    }
    try {
      await client.getProfile(token).then((response) {
            if (response != null) {
              debugPrint(response.firstName);
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
      LoginModel().setLogin(event);
    }
  }
}