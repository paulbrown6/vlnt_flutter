import 'package:vlnt_flutter/entity/api/user.dart';

abstract class UserViewModel{

  String get token;
  String? get userName;
  String? get userAvatar;
  void setUser(User user);
  void setToken(String token);
}