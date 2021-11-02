import 'dart:io';
import 'package:aplikasi_kimiaku/res/custom_colors.dart';
import 'package:aplikasi_kimiaku/screens/info_pengembang_screen.dart';
import 'package:aplikasi_kimiaku/screens/materi_screen.dart';
import 'package:aplikasi_kimiaku/screens/senyawa_screen.dart';
import 'package:aplikasi_kimiaku/screens/sign_in_screen.dart';
import 'package:aplikasi_kimiaku/screens/sistem_screen.dart';
import 'package:aplikasi_kimiaku/screens/soal_screen.dart';
import 'package:aplikasi_kimiaku/utils/authentication.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required User user})
      : _user = user,
        super(key: key);

  final User _user;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late User _user;
  bool _isSigningOut = false;

  Route _routeToSignInScreen() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => SignInScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(-1.0, 0.0);
        var end = Offset.zero;
        var curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  @override
  void initState() {
    _user = widget._user;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    openwhatsapp() async {
      var whatsapp = "+6289601484937";
      var whatsappURl_android = "whatsapp://send?phone=" +
          whatsapp +
          "&text=Saya mau request rumus Kimia. Terima kasih.";
      var whatappURL_ios = "https://wa.me/$whatsapp?text=${Uri.parse("hello")}";
      if (Platform.isIOS) {
        // for iOS phone only
        if (await canLaunch(whatappURL_ios)) {
          await launch(whatappURL_ios, forceSafariVC: false);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: new Text("Whatsapp not installed")));
        }
      } else {
        // android , web
        if (await canLaunch(whatsappURl_android)) {
          await launch(whatsappURl_android);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: new Text("Whatsapp not installed")));
        }
      }
    }

    return Scaffold(
      backgroundColor: CustomColors.merahMerona,
      body: SafeArea(
          child: ListView(children: <Widget>[
        Container(
          height: 220,
          color: Color(0xffdb3444),
          child: Column(children: <Widget>[
            Row(children: <Widget>[
              Flexible(flex: 3, child: Container()),
              Flexible(
                  flex: 0,
                  child: Padding(
                      padding: EdgeInsets.all(10),
                      child: _isSigningOut
                          ? CircularProgressIndicator(
                              valueColor:
                                  AlwaysStoppedAnimation<Color>(Colors.white),
                            )
                          : IconButton(
                              onPressed: () async {
                                setState(() {
                                  _isSigningOut = true;
                                });
                                await Authentication.signOut(context: context);
                                setState(() {
                                  _isSigningOut = false;
                                });
                                Navigator.of(context)
                                    .pushReplacement(_routeToSignInScreen());
                              },
                              icon: Icon(Icons.logout_outlined,
                                  color: Colors.white, size: 30))))
            ]),
            Flexible(flex: 3, child: Image.asset('assets/banner.png')),
          ]),
        ),
        SizedBox(height: 8.0),
        Center(
          child: Text(
            "Hai, " + _user.displayName! + "!",
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
            ),
          ),
        ),
        SizedBox(height: 8.0),
        Card(
            color: Colors.white70,
            child: ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SenyawaPage();
                  }));
                },
                leading: Icon(Icons.science),
                title: Text('Daftar Senyawa',
                    style: TextStyle(
                        color: Color(0xffc32e3b),
                        fontSize: 18,
                        fontWeight: FontWeight.w500)))),
        Card(
            color: Colors.white70,
            child: ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return MateriPage();
                  }));
                },
                leading: Icon(Icons.text_snippet),
                title: Text('Materi',
                    style: TextStyle(
                        color: Color(0xffc32e3b),
                        fontSize: 18,
                        fontWeight: FontWeight.w500)))),
        Card(
            color: Colors.white70,
            child: ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SistemPage();
                  }));
                },
                leading: Icon(Icons.table_chart),
                title: Text('Sistem Periodik',
                    style: TextStyle(
                        color: Color(0xffc32e3b),
                        fontSize: 18,
                        fontWeight: FontWeight.w500)))),
        Card(
            color: Colors.white70,
            child: ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SoalPage();
                  }));
                },
                leading: Icon(Icons.task),
                title: Text('Soal',
                    style: TextStyle(
                        color: Color(0xffc32e3b),
                        fontSize: 18,
                        fontWeight: FontWeight.w500)))),
        Card(
            color: Colors.white70,
            child: ListTile(
                onTap: () {
                  openwhatsapp();
                },
                leading: Icon(Icons.perm_phone_msg),
                title: Text('Request Rumus',
                    style: TextStyle(
                        color: Color(0xffc32e3b),
                        fontSize: 18,
                        fontWeight: FontWeight.w500)))),
        Card(
            color: Colors.white70,
            child: ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return PengembangPage();
                  }));
                },
                leading: Icon(Icons.engineering),
                title: Text('Informasi Pengembang',
                    style: TextStyle(
                        color: Color(0xffc32e3b),
                        fontSize: 18,
                        fontWeight: FontWeight.w500)))),
      ])),
    );
  }
}
