import 'package:flutter/material.dart';
import 'package:myapp/Adapter/AnnouncementAdapter.dart';
import 'package:myapp/Controller/ControllerDashboard.dart';

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
        Text("Announcement"),
        FutureBuilder(
          future: AnnouncementData(context), 
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
                  return AnnouncementAdapter(
                    id: snapshot.requireData[index]['id'],
                    author: snapshot.requireData[index]['author'],
                    date: snapshot.requireData[index]['date'],
                    description: snapshot.requireData[index]['description'],
                    end_date: snapshot.requireData[index]['end_date'],
                    id_status: snapshot.requireData[index]['id_status'],
                    temporary: snapshot.requireData[index]['temporary'],
                    title: snapshot.requireData[index]['title'],
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