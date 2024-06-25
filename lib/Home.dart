import 'package:flutter/material.dart';
import 'package:myapp/Model/Ascendant.dart';
import 'package:myapp/UI/Dashboard.dart';
import 'package:myapp/UI/Transaction.dart';
import 'Color/colors.dart' as NewColor;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> tabs = [
    Dashboard(),
    Transaction(),
    Text("data3"),
    Text("data4"),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        LogoutMessage("Logout", "Are you sure you want to Logout ?", context);
        return false; // Prevent default back button behavior
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Inventory PU',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: NewColor.PrimaryColors(),
          iconTheme: IconThemeData(color: Colors.white), // Set the icon color to white
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      child: Image.asset("assets/img/logo.jpg"),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: NewColor.PrimaryColors(),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home, color: NewColor.PrimaryColors()),
                title: Text('Dashboard', style: TextStyle(color: NewColor.PrimaryColors())),
                onTap: () {
                  Navigator.pop(context);
                  setState(() {
                    _currentIndex = 0;
                  });
                },
                tileColor: _currentIndex == 0 ? NewColor.SecondaryColors() : null,
                selected: _currentIndex == 0,
                selectedTileColor: NewColor.SecondaryColors(),
              ),
              ListTile(
                leading: Icon(Icons.currency_exchange, color: NewColor.PrimaryColors()),
                title: Text('Transaction', style: TextStyle(color: NewColor.PrimaryColors())),
                onTap: () {
                  Navigator.pop(context);
                  setState(() {
                    _currentIndex = 1;
                  });
                },
                tileColor: _currentIndex == 1 ? NewColor.SecondaryColors() : null,
                selected: _currentIndex == 1,
                selectedTileColor: NewColor.SecondaryColors(),
              ),
              ListTile(
                leading: Icon(Icons.history, color: NewColor.PrimaryColors()),
                title: Text('Transaction History', style: TextStyle(color: NewColor.PrimaryColors())),
                onTap: () {
                  Navigator.pop(context);
                  setState(() {
                    _currentIndex = 2;
                  });
                },
                tileColor: _currentIndex == 2 ? NewColor.SecondaryColors() : null,
                selected: _currentIndex == 2,
                selectedTileColor: NewColor.SecondaryColors(),
              ),
              ListTile(
                leading: Icon(Icons.logout, color: NewColor.PrimaryColors()),
                title: Text('Signout', style: TextStyle(color: NewColor.PrimaryColors())),
                onTap: () {
                  LogoutMessage("Logout", "Are you sure you want to Logout ?", context);
                },
                tileColor: _currentIndex == 3 ? NewColor.SecondaryColors() : null,
                selected: _currentIndex == 3,
                selectedTileColor: NewColor.SecondaryColors(),
              ),
            ],
          ),
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: tabs[_currentIndex],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

void LogoutMessage(String title, String message, BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: <Widget>[
          TextButton(
            child: Text("Cancel"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: Text("Logout"),
            onPressed: () {
              // Add your logout logic here
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
