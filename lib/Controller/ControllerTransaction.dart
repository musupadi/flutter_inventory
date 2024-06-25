import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:myapp/API/server.dart';
import 'package:myapp/Model/Ascendant.dart';

Future<List> TransactionData(BuildContext context) async{
    final response=await http.get(
        Uri.parse(
          getServerName()+
              stringItem())
    ).timeout(Duration(seconds: 5));
    // var url = Uri.http(getServerName(), "ReservationAll/",queryParameters);
    List list = [];
    // FailedMessage("Testing", json.decode(response.body)['data'].toString(), context);
    list = json.decode(response.body)['data'];
    
    return list;
}