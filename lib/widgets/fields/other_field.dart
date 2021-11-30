import 'package:flutter/material.dart';
import 'package:vlnt_flutter/viewmodels/impl/form_view_model_impl.dart';

class OtherField extends StatefulWidget{

  const OtherField({Key? key}) : super(key: key);

  @override
  State<OtherField> createState() => _OtherField();

}

class _OtherField extends State<OtherField>{

  TextEditingController controllerEmail = TextEditingController();
  FormViewModelImpl _viewModel = FormViewModelImpl();

  @override
  void initState() {
    controllerEmail.addListener(
            () => _viewModel.inputEmailText.add(controllerEmail.text));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return
      StreamBuilder<String>(
          stream: _viewModel.outputErrorEmailText,
          builder: (context, snapshot){
            debugPrint(snapshot.data);
            return TextFormField(
              controller: controllerEmail,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "Тест текст",
                labelText: "Тест текст",
                labelStyle: TextStyle(
                  color: Color.fromRGBO(102, 102, 102, 1),
                  fontSize: 16,
                ),
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                isCollapsed: true,
              ),
              onChanged: (value) {
                debugPrint(value);
                _viewModel.email = value;
              },
            );
          }
      );
  }

}