import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget>tabs = [
    Text("data1"),
    Text("data2"),
    Text("data3"),
    Text("data4"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sidebar Demo'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  _currentIndex = 0;
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  _currentIndex = 1;
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text('Contact Us'),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  _currentIndex = 2;
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  _currentIndex = 3;
                });
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: tabs[_currentIndex],
      ),
    );
  }
}