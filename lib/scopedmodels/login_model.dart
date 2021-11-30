import 'package:scoped_model/scoped_model.dart';

class LoginModel extends Model{

  LoginModel._();
  static final LoginModel _loginModel = LoginModel._();

  factory LoginModel() {
    return _loginModel;
  }

  bool login = false;

  bool getLogin(){
    return login;
  }

  void setLogin(bool isLogin){
    login = isLogin;
    notifyListeners();
  }
}