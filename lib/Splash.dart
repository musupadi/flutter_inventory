import 'package:flutter/material.dart';
import 'dart:async';
import 'Route.dart';
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    // TODO: implement initState
    super.initState();
     Timer(Duration(seconds: 3), () {
        toLogin(context, false);
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Text("data");
  }
}