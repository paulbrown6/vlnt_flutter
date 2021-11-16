import 'dart:async';

import 'package:vlnt_flutter/entity/api/user.dart';
import 'package:vlnt_flutter/retrofit/api_request.dart';
import 'package:vlnt_flutter/viewmodels/user_view_model.dart';

class UserViewModelImpl extends UserViewModel{

  static var _token = "null";
  static User? _user = null;
  static StreamController<bool> _profileController = StreamController<bool>.broadcast();


  Sink get inputProfile => _profileController;

  Stream<bool> get outputErrorProfile =>
      _profileController.stream.map((event) => event);

  @override
  String? get userAvatar => "http://dev.vlnt.expoforum.ru/api/static${_user!.photo!['url']}";

  @override
  String? get userName => "${_user!.firstName}  ${_user!.lastName}";

  @override
  String get token => _token;

  @override
  void setToken(String token) {
    _token = token;
  }

  @override
  void setUser(User user) {
    _user = user;
  }

  getProfile() {
    ApiRequest().userProfile(_token);
  }

  dispose() {
    _profileController.close();
  }
}