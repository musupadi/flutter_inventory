import 'package:flutter/material.dart';
import 'package:myapp/Adapter/ItemRequestAdapter.dart';
import 'package:myapp/Controller/ControllerTransaction.dart';

class Mobile extends StatefulWidget {
  const Mobile({super.key});

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Text("Transaction"),
            FutureBuilder(
              future: TransactionData(context), 
              builder: (context, snapshot) {
                // Suggested code may be subject to a license. Learn more: ~LicenseLog:1178998665.
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                }else if(snapshot.hasError){
                  return CircularProgressIndicator();
                }else if(snapshot.hasData){
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: snapshot.requireData.length,
                    itemBuilder: (context, index) {
                      return ItemRequestAdapter();
                      },
                    );
                }else{
                  return CircularProgressIndicator();
                }
              },
            )
          ],
        );
  }
}