import 'package:aplikasi_kimiaku/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 5000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => SignInScreen()));
  }

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
