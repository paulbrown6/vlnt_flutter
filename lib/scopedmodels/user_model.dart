import 'package:scoped_model/scoped_model.dart';

class UserModel extends Model{

  UserModel._();
  static final UserModel _userModel = UserModel._();

  factory UserModel() {
    return _userModel;
  }

  bool user = false;

  bool isUserLoad(){
    return user;
  }

  void setUserLoad(bool isUser){
    user = isUser;
    notifyListeners();
  }
}