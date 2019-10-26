import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Sidebar Drawer",
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Basic Drawer'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                padding: EdgeInsets.all(50.0),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(fontSize: 20.0),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text('Beranda'),
                trailing: Icon(Icons.home),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Setting'),
                trailing: Icon(Icons.settings),
              ),
            ],
          ),
        ),
        body: Center(
          child: Image.asset(
            'img/macbook.png',
            width: 200.0,
          ),
        ));
  }
}
