import 'dart:async';
import 'package:dio_http/dio_http.dart';
import 'package:flutter/material.dart';
import 'package:vlnt_flutter/entity/login_data.dart';
import 'package:vlnt_flutter/retrofit/api.dart';
import 'package:vlnt_flutter/validator/text_field_validator.dart';
import 'package:vlnt_flutter/viewmodels/form_view_model.dart';

class FormViewModelImpl extends FormViewModel {

  static Dio dio = Dio();
  static LoginData loginData = LoginData();
  static StreamController<String> _emailTextController = StreamController<String>.broadcast();
  static StreamController<String> _passwordTextController = StreamController<String>.broadcast();
  static StreamController<bool> _loginController = StreamController<bool>.broadcast();

  @override
  Sink get inputEmailText => _emailTextController;

  @override
  Sink get inputPasswordText => _passwordTextController;

  @override
  Stream<bool> get outputErrorEmail =>
      _emailTextController.stream.map((value) => EmailValidator(value).isValid);

  @override
  Stream<bool> get outputErrorPassword => _passwordTextController.stream
      .map((value) => PasswordValidator(value).isValid);

  Stream<bool> get outputErrorLogin =>
      _loginController.stream.map((event) => event);

  @override
  Stream<String> get outputErrorEmailText =>
      outputErrorEmail.map((value) => value ? "" : "Некорректный email");

  @override
  Stream<String> get outputErrorPasswordText => outputErrorPassword
      .map((value) => value ? "" : "Пароль должен иметь больше 7 символов");

  Stream<String> get outputErrorLoginText => outputErrorLogin
      .map((value) => value ? "" : "Неправильный логин или пароль");

  set email(String value) => loginData.login = value;

  set password(String value) => loginData.password = value;

  login() async {
    bool event = false;
    String login = loginData.login;
    String password = loginData.password;
    debugPrint("login is Start! login = $login || password = $password");
    if (!login.isNotEmpty && !password.isNotEmpty) {
      return;
    }
    dio.options.headers["Content-Type"] = "application/json";
    final client = RestClient(dio);
    try {
      await client.signin({"username": login, "password": password}).then(
        (response) {
          if (response != null) {
            debugPrint(response.accessToken);
            event = true;
          }},
        onError: (error) {
          debugPrint("Error: ${error.toString()}");
      });
    } catch (e) {
      debugPrint(e.toString());
    }
    _loginController.add(event);
    debugPrint("event = $event");
    if (event) dispose();
  }

  dispose() {
    _loginController.close();
    _passwordTextController.close();
    _emailTextController.close();
  }
}

