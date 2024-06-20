import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async';
import 'dart:io';
import 'package:myapp/Route.dart';
import '../Color/colors.dart' as NewColor;
import 'package:http/http.dart' as http;
import '../API/server.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../Home.dart';
import '../Login.dart';
LoginSuccess (String name,BuildContext context){
    AwesomeDialog(
        context: context,
        dismissOnTouchOutside: true,
        dismissOnBackKeyPress: false,
        dialogType: DialogType.success,
        animType: AnimType.scale,
        title: "Login Succes",
        desc: "Selamat Datang "+name,
        btnOkOnPress: () {
          toHome(context,false);
        },
        headerAnimationLoop: false
    )..show();
}
  