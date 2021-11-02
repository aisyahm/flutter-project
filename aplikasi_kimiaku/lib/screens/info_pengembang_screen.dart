import 'package:flutter/material.dart';

class PengembangPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffdb3444),
        body: Center(
          child: Container(
              alignment: Alignment.center,
              height: 200,
              width: 200,
              child: Image.asset('assets/kimia.png', height: 100, width: 100),
              decoration: BoxDecoration(
                color: Colors.white38,
                shape: BoxShape.circle,
              )),
        ));
  }
}
