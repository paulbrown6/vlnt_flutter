import 'dart:async';
import 'package:dio_http/dio_http.dart';
import 'package:flutter/material.dart';
import 'package:vlnt_flutter/entity/data/login_data.dart';
import 'package:vlnt_flutter/retrofit/api.dart';
import 'package:vlnt_flutter/retrofit/api_request.dart';
import 'package:vlnt_flutter/scopedmodels/login_model.dart';
import 'package:vlnt_flutter/validator/text_field_validator.dart';
import 'package:vlnt_flutter/viewmodels/form_view_model.dart';

class FormViewModelImpl extends FormViewModel {

  static StreamController<String> _emailTextController = StreamController<String>.broadcast();
  static StreamController<String> _passwordTextController = StreamController<String>.broadcast();
  static StreamController<bool> _loginController = StreamController<bool>.broadcast();

  static LoginData loginData = LoginData();

  @override
  Sink get inputEmailText => _emailTextController;

  @override
  Sink get inputPasswordText => _passwordTextController;

  @override
  Sink get inputLogin => _loginController;

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

  login() {
    ApiRequest().login(loginData.login, loginData.password);
  }

  dispose() {
    _loginController.close();
    _passwordTextController.close();
    _emailTextController.close();
  }
}

