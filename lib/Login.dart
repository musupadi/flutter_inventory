import 'package:flutter/material.dart';
import 'package:myapp/Mobile/LoginMobile.dart';
import 'Web/LoginWeb.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _loginState();

}


class _loginState extends State<Login> {

  @override
  Widget build(BuildContext context){
    return WillPopScope(
      onWillPop: () async{
        return false;
      },
      child: Scaffold(
        body: MediaQuery.of(context).size.width <= 720 ? LoginMobile() : LoginWeb()
      ),
    );
  }
}