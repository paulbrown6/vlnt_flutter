import 'package:flutter/material.dart';

class IconTextButton extends StatelessWidget {
  const IconTextButton(
      {Key? key,
      required this.onPressed,
      required this.buttonText,
      required this.icon})
      : super(key: key);
  final IconData icon;
  final GestureTapCallback onPressed;
  final String buttonText;

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
                size: 32,
                color: Colors.white,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                buttonText,
                style: TextStyle(
                    fontSize: 12, color: Color.fromRGBO(255, 255, 255, 1)),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
