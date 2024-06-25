import 'package:flutter/material.dart';
import 'package:myapp/UI/Dashboard/Mobile.dart';
import 'package:myapp/UI/Dashboard/Web.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width <= 720 ? Mobile() : Web();
  }
}