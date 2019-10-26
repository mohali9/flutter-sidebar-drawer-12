import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import './detail.dart';

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
  String gambar1 = 'img/ali.jpg';
  String gambar2 = 'img/ali1.jpg';
  String backup;

  String nama1 = 'Moh Ali';
  String nama2 = 'Afif';
  String backupnama;

  void gantiuser() {
    this.setState(() {
      backup = gambar1;
      gambar1 = gambar2;
      gambar2 = backup;

      backupnama = nama1;
      nama1 = nama2;
      nama2 = backupnama;
    });
  }

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
              UserAccountsDrawerHeader(
                accountName: Text(nama1),
                accountEmail: Text('mohali.ilkom@gmai.com'),
                currentAccountPicture: GestureDetector(
                  onTap: (){
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context)=> Detail(nama: nama1, gambar: gambar1,)
                  ));
                  },
                  child: CircleAvatar(
                    backgroundImage: AssetImage(gambar1),
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'http://epmgaa.media.clients.ellingtoncms.com/img/photos/2018/07/05/travel_2.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                otherAccountsPictures: <Widget>[
                  GestureDetector(
                    onTap: () => gantiuser(),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(gambar2),
                    ),
                  ),
                ],
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
