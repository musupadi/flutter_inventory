import 'package:flutter/material.dart';
import 'Login.dart';
import 'Color/colors.dart' as NewColor;
void main() {
  runApp(SidebarApp ());
}

class SidebarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primaryColor: NewColor.PrimaryColors(),
        primaryColorDark: NewColor.PrimaryColorsDark(),
        primarySwatch: Colors.brown,
        fontFamily: 'gotham'
      ),
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}