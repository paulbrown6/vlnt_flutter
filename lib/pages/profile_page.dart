import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vlnt_flutter/icons/icons_custom_icons.dart';
import 'package:vlnt_flutter/widgets/buttons/icon_text_button.dart';

class ProfilePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            color: Color.fromRGBO(63, 59, 93, 1),
          ),
          child: Center(
              child: Column(
                  children:  [
                    SizedBox(
                      height: 70,
                    ),
                    Container(
                      height: 150,
                      width: 150,
                      child: ClipOval(
                        child: CachedNetworkImage(
                          fit: BoxFit.cover,
                          imageUrl: "https://whatsism.com/uploads/posts/2018-07/1530546770_rmk_vdjbx10.jpg",
                          progressIndicatorBuilder: (context, url, downloadProgress) =>
                              CircularProgressIndicator(value: downloadProgress.progress),
                          errorWidget: (context, url, error) => Icon(Icons.error),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        'ДМИТРИЙ КАРГАЕВ',
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
                      buttonText: "Анкета"
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    IconTextButton(
                        icon: IconsCustom.news,
                        onPressed: () {},
                        buttonText: "Новости"
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    IconTextButton(
                        icon: IconsCustom.book,
                        onPressed: () {},
                        buttonText: "Обучение",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    IconTextButton(
                      icon: Icons.wallet_travel_outlined,
                      onPressed: () {},
                      buttonText: "Работа",
                    ),
                  ]
              ),
          )
      ),
    );
  }

}