import 'package:flutter/material.dart';

class IconTextButton extends StatelessWidget{

  const IconTextButton({Key? key, required this.onPressed, required this.buttonText, required this.icon}) : super(key: key);
  final IconData icon;
  final GestureTapCallback onPressed;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      padding: const EdgeInsets.all(0.0),
      onPressed: onPressed,
      child: Ink(
        decoration: const BoxDecoration(
          color: Color.fromRGBO(63, 59, 93, 1),
        ),
        child: Container(
          constraints: const BoxConstraints(maxWidth: 150, maxHeight: 60, minWidth: 50), // min sizes for Material buttons
          alignment: Alignment.center,
          child: Row(
            children: [
              Icon(
                icon,
                size: 32,
                color: Colors.white,
              ),
              SizedBox(width: 20,),
              Text(
                buttonText,
                style: TextStyle(
                    fontSize: 12,
                    color: Color.fromRGBO(255, 255, 255, 1)
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

}