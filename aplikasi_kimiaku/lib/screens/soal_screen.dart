import 'package:aplikasi_kimiaku/docs/document.dart';
import 'package:flutter/material.dart';

class SoalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Color(0xffdb3444), title: Text('Daftar Soal')),
        body: ListView(children: <Widget>[
          SizedBox(height: 16.0),
          Card(
              color: Colors.white70,
              child: ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Document1(
                        documentNum: 5,
                      );
                    }));
                  },
                  title: Text('Soal Asam Basa',
                      style: TextStyle(
                          color: Color(0xffc32e3b),
                          fontSize: 18,
                          fontWeight: FontWeight.w500)))),
          Card(
              color: Colors.white70,
              child: ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Document1(
                        documentNum: 6,
                      );
                    }));
                  },
                  title: Text('Soal Iodimetri',
                      style: TextStyle(
                          color: Color(0xffc32e3b),
                          fontSize: 18,
                          fontWeight: FontWeight.w500)))),
          Card(
              color: Colors.white70,
              child: ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Document1(
                        documentNum: 7,
                      );
                    }));
                  },
                  title: Text('Soal Kompleksometri',
                      style: TextStyle(
                          color: Color(0xffc32e3b),
                          fontSize: 18,
                          fontWeight: FontWeight.w500)))),
        ]));
  }
}
