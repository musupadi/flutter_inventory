import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
FailedMessage (String title,String desc,BuildContext context){
  AwesomeDialog(
      context: context,
      dismissOnTouchOutside: true,
      dismissOnBackKeyPress: false,
      dialogType: DialogType.error,
      animType: AnimType.scale,
      title: title,
      desc: desc,
      btnOkOnPress: () {

      },
      headerAnimationLoop: false
  )..show();
}