import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  Detail({this.nama, this.gambar});
  final String nama;
  final String gambar;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail $nama'),
        backgroundColor: Colors.red,
      ),
      body: Container(
        child: Center(
          child: Image.asset(gambar),
        ),
      ),
    );
  }
}
