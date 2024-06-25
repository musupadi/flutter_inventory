import 'package:flutter/material.dart';
import 'package:myapp/Adapter/ItemRequestAdapter.dart';
import 'package:myapp/Controller/ControllerTransaction.dart';

class Web extends StatefulWidget {
  const Web({super.key});

  @override
  State<Web> createState() => _WebState();
}

class _WebState extends State<Web> {
 @override
  Widget build(BuildContext context) {
   return Column(
      children: [
        Text("Announcement"),
        FutureBuilder(
          future: TransactionData(context), 
          builder: (context, snapshot) {
            // Suggested code may be subject to a license. Learn more: ~LicenseLog:1178998665.
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            }else if(snapshot.hasError){
              return CircularProgressIndicator();
            }else if(snapshot.hasData){
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 400,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                                mainAxisExtent: 150,
                ),
                shrinkWrap: true,
                itemCount: snapshot.requireData.length,
                itemBuilder: (context, index) {
                  return ItemRequestAdapter(
                  );
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