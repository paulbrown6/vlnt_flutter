import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:vlnt_flutter/scopedmodels/login_model.dart';
import 'package:vlnt_flutter/viewmodels/impl/form_view_model_impl.dart';
import 'package:vlnt_flutter/widgets/bars/login_toolbar.dart';
import 'package:vlnt_flutter/widgets/login_form.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AuthPage();
}

class _AuthPage extends State {

  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: LoginModel(),
      child: ScopedModelDescendant<LoginModel>(
        builder: (BuildContext context, Widget? inChild, LoginModel model) {
          if (model.getLogin()){
            WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
              Navigator.pushNamed(context, '/news');
            });
            return Center(
              child: Container(
                height: 50,
                width: 50,
                child: CircularProgressIndicator(
                  color: Colors.lightGreenAccent,
                ),
              ),
            );
          } else {
            return Scaffold(
              body: SingleChildScrollView(
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/images/background_auth_page.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    children: [
                      ToolbarLogin(),
                      SizedBox(
                        height: 25,
                      ),
                      Center(
                          child:
                          Image(image: AssetImage(
                              'assets/images/logo_hands.png'))),
                      SizedBox(
                        height: 13,
                      ),
                      Text(
                        "Добро пожаловать в Волонтёрский центр",
                        style: TextStyle(
                          fontFamily: GoogleFonts
                              .romanesco()
                              .fontFamily,
                          color: Color.fromARGB(250, 250, 250, 250),
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Text(
                        "Текст для пользователя сайта о том, что нужно ввести свои данные, чтобы войти в Личный кабинет.",
                        style: TextStyle(
                          fontFamily: GoogleFonts
                              .romanesco()
                              .fontFamily,
                          color: Color.fromARGB(250, 250, 250, 250),
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 38,
                      ),
                      LoginForm(),
                    ],
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
