import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:myapp/Login.dart';
import 'package:shared_preferences/shared_preferences.dart';
FailedMessage (String title,String desc,BuildContext context){
  AwesomeDialog(
      context: context,
      dismissOnTouchOutside: true,
      dismissOnBackKeyPress: false,
      dialogType: DialogType.error,
      animType: AnimType.scale,
      title: title,
      desc: desc,
      btnOkOnPress: () {

      },
      headerAnimationLoop: false
  )..show();
}
LogoutMessage(String title,String desc,BuildContext context){
  showGeneralDialog(
    barrierLabel: '',
    barrierDismissible: true,
    transitionDuration: Duration(milliseconds: 200),
    context: context,
    pageBuilder: (context, animation, secondaryAnimation) {
      return Container();
    },
    transitionBuilder: (context, animation, secondaryAnimation, child) {
      return ScaleTransition(
        scale: Tween<double>(begin: 0.5,end: 1.0).animate(animation),
        child: AlertDialog(
          title: Center(
              child: Text(title)
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(desc),
              const SizedBox(height: 10),
              Container(
                width: 300,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: () {
                            Logout(context);
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(50)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Center(
                              child: Text("Iya",
                                style: TextStyle(
                                    color: Colors.white
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(50)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Center(
                              child: Text("Tidak",
                                style: TextStyle(
                                    color: Colors.white
                                ),),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide.none
          ),
        ),
      );
    },
  );
}
void Logout(BuildContext context) async{
  SharedPreferences pref = await SharedPreferences.getInstance();
  // FailedMessage("Contoh ", name.toString(), context);

  await pref.clear();

  Navigator.push(
      context,
      PageRouteBuilder(
          transitionDuration: Duration(seconds: 1),
          transitionsBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secAnimation,
              Widget child) {
            animation = CurvedAnimation(
                parent: animation,
                curve: Curves.elasticInOut
            );
            return ScaleTransition(
              scale: animation,
              child: child,
              alignment: Alignment.center,
            );
          },
          pageBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secAnimation
              )
          {
            return Login();
          }
      )
  );
}