import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  BottomBar(
      {Key? key,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      color: Color.fromRGBO(63, 59, 93, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            height: 30,
              image: AssetImage(
          'assets/images/logo_hands.png')),
          SizedBox(
            height: 10,
          ),
          Text('#WorldSkillsRussia',
          style: TextStyle(
            color: Colors.white,
          ),),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('О движении WorldSkills',
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                ),),
              SizedBox(
                width: 20,
              ),
              Image(image: AssetImage(
              'assets/images/vk.png')),
              SizedBox(
                width: 20,
              ),
              Image(image: AssetImage(
              'assets/images/facebook.png')),
              SizedBox(
                width: 20,
              ),
              Image(image: AssetImage(
              'assets/images/instagram.png')),
            ],
          )
        ],
      )
    );
  }
}
