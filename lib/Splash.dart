import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';
import 'Route.dart';
import 'Home.dart';
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  Checker() async{
    final prefs = await SharedPreferences.getInstance();
    String? name = prefs.getString('name');
    if(name !=null){
      toHome(context, true);
    }else{
      Timer(Duration(seconds: 3), () {
        toLogin(context, false);
      },
      );
    }
  }
  @override
  void initState(){
    // TODO: implement initState
    super.initState();
    Checker();
  }
  @override
  Widget build(BuildContext context) {
    return Text("data");
  }
}