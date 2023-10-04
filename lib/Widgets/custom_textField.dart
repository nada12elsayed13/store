import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';


// ignore: must_be_immutable
class TextFieldWidget extends StatelessWidget {
  TextFieldWidget({this.hintText, this.onchanged,this.obsure=false,this.inputType});
  String? hintText;
  bool?obsure;
  TextInputType? inputType;
  Function(String)? onchanged;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText:obsure! ,
      
      // ignore: body_might_complete_normally_nullable
      keyboardType:inputType ,
      onChanged: onchanged,
      decoration: InputDecoration(
        hintText: hintText,
        border:  OutlineInputBorder(
          borderSide:const BorderSide(),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder:  OutlineInputBorder(
          borderSide:const BorderSide(),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
