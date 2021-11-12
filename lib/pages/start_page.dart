import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:vlnt_flutter/scopedmodels/login_model.dart';
import 'package:vlnt_flutter/widgets/buttons/gradient_button.dart';

class StartPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background_start_page.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
              children:  [
                Container(
                    alignment: Alignment.topRight,
                    padding: EdgeInsets.only(right: 20),
                    child: Image.asset('assets/images/logo_euroskills.png', width: 100, height: 100)
                ),
                SizedBox(height: 50,),
                Center(
                  child:
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                        children: [
                          Image(image: AssetImage('assets/images/logo_volunteer.png')),
                          SizedBox(height: 50,),
                          Builder(
                            builder: (context) => Center(
                              child:
                                  ScopedModel<LoginModel>(
                                    model: LoginModel(),
                                    child: ScopedModelDescendant<LoginModel>(
                                      builder: (BuildContext context, Widget inChild, LoginModel model) {
                                        return GradientButton(
                                          onPressed: () {
                                            model.getLogin() ?
                                            Navigator.pushNamed(context, '/profile') :
                                            Navigator.pushNamed(context, '/auth');
                                          },
                                          buttonText: 'Войти',
                                        );
                                      },
                                    ),
                                  ),
                            ),
                          ),
                        ]
                    ),
                  ),
                )
              ]
          )
      ),
    );
  }

}