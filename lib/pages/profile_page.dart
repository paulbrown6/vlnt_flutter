import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:vlnt_flutter/scopedmodels/user_model.dart';
import 'package:vlnt_flutter/viewmodels/impl/user_view_model_impl.dart';
import 'package:vlnt_flutter/widgets/buttons/icon_text_button.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {

  UserViewModelImpl _userModel = UserViewModelImpl();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            color: Color.fromRGBO(63, 59, 93, 1),
          ),
          child: Center(
            child: Column(children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.85,
                child: ScopedModel(
                  model: UserModel(),
                  child: ScopedModelDescendant<UserModel>(
                    builder: (BuildContext context, Widget? inChild, UserModel model){
                      debugPrint(_userModel.userAvatar.toString());
                      return Column(
                        children: [
                          SizedBox(
                            height: 70,
                          ),
                          Container(
                            height: 150,
                            width: 150,
                            child: ClipOval(
                              child: CachedNetworkImage(
                                fit: BoxFit.cover,
                                imageUrl:
                                model.user ? _userModel.userAvatar.toString() : "https://whatsism.com/uploads/posts/2018-07/1530546770_rmk_vdjbx10.jpg",
                                progressIndicatorBuilder:
                                    (context, url, downloadProgress) =>
                                    CircularProgressIndicator(
                                        value: downloadProgress.progress),
                                errorWidget: (context, url, error) =>
                                    ImageIcon(AssetImage('assets/images/avatar.png')),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            model.user ? _userModel.userName.toString() : '?????????????? ??????????????',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: GoogleFonts.romanesco().fontFamily,
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          IconTextButton(
                              icon: Icons.account_circle_outlined,
                              onPressed: () {},
                              buttonText: "????????????"),
                          SizedBox(
                            height: 10,
                          ),
                          IconTextButton(
                              icon: Icons.assignment_outlined,
                              onPressed: () {
                                Navigator.pushNamed(context, '/news');
                              },
                              buttonText: "??????????????"),
                          SizedBox(
                            height: 10,
                          ),
                          IconTextButton(
                            icon: Icons.book_outlined,
                            onPressed: () {
                              Navigator.pushNamed(context, '/incident');
                            },
                            buttonText: "??????????????????",
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          IconTextButton(
                            icon: Icons.wallet_travel_outlined,
                            onPressed: () {
                              Navigator.pushNamed(context, '/work');
                            },
                            buttonText: "????????????",
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconTextButton(
                      iconSize: 24,
                      onPressed: () {},
                      buttonText: "??????????????????",
                      icon: Icons.settings_outlined,
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    IconTextButton(
                      iconSize: 24,
                      onPressed: () {},
                      buttonText: "??????????",
                      icon: Icons.logout,
                    )
                  ],
                ),
              ),
            ]),
          )),
    );
  }
}
