import 'package:flutter/material.dart';

class IconTextButton extends StatelessWidget {

   IconTextButton(
      {Key? key,
      required this.onPressed,
      required this.buttonText,
      required this.icon,
        this.iconSize = 32,
        this.fontSize = 12
      })
      : super(key: key);

  final IconData icon;
  final GestureTapCallback onPressed;
  final String buttonText;
  double iconSize;
  double fontSize;


  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: Size(150, 60),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.indigoAccent,
          onTap: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: 10,
              ),
              Icon(
                icon,
                size: iconSize,
                color: Colors.white,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                buttonText,
                style: TextStyle(
                    fontSize: fontSize, color: Color.fromRGBO(255, 255, 255, 1)),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
