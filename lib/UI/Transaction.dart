import 'package:flutter/material.dart';
import 'package:myapp/UI/Transaction/Mobile.dart';
import 'package:myapp/UI/Transaction/Web.dart';

class Transaction extends StatefulWidget {
  const Transaction({super.key});

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width <= 720 ? Mobile() : Web();
  }
}