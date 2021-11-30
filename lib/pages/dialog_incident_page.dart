import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:vlnt_flutter/scopedmodels/user_model.dart';
import 'package:vlnt_flutter/viewmodels/impl/user_view_model_impl.dart';
import 'package:vlnt_flutter/widgets/buttons/gradient_button.dart';
import 'package:vlnt_flutter/widgets/buttons/icon_text_button.dart';
import 'package:vlnt_flutter/widgets/fields/email_field.dart';
import 'package:vlnt_flutter/widgets/fields/other_field.dart';
import 'package:vlnt_flutter/widgets/fields/password_field.dart';
import 'package:vlnt_flutter/widgets/texts/bicolor_text.dart';

class DialogIncidentPage extends StatelessWidget {
  const DialogIncidentPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: Column(
            children: [
              BicolorText(
                  textOne: 'Добавить',
                  textTwo: ' инцидент',
                  colorOne: Color.fromRGBO(67, 135, 122, 1),
                  colorTwo: Color.fromRGBO(64, 59, 94, 1)),
              SizedBox(
                height: 30,
              ),
              OtherField(),
              SizedBox(
                height: 20,
              ),
              OtherField(),
              SizedBox(
                height: 20,
              ),
              OtherField(),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: Icon(
                      Icons.photo_camera_outlined,
                      size: 32,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: Icon(
                      Icons.location_on_outlined,
                      size: 32,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              GradientButton(
                onPressed: () {},
                buttonText: 'Добавить',
              ),
            ],
          )),
    );
  }
}
