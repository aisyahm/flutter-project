import 'package:flutter/material.dart';
import 'home.dart';


class Splash extends StatefulWidget { 
  const Splash ({ Key? key }) : super(key: key);

  @override
  _SplashState createState() => _SplashState();

  }

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async{
    await Future.delayed(Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(
      context, 
      MaterialPageRoute(
        builder: (context)=> MyHomePage()
                  )
          );
          
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: Scaffold(
      backgroundColor: Color(0xffa1ce67),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Flexible(
              flex: 2,
              child: Container(
                margin: EdgeInsets.only(top: 100.0),
                child: Text(
                  'Belajar Stunting',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                ),
              ),
            ),
            ),

            Flexible(
              flex: 3, 
              child: Container(
                margin: EdgeInsets.only(top: 50.0),
                child: Image.asset('images/stunting.jpg'),
              ),
            ),

            Flexible(
              flex: 1, 
              child: Container(
                margin: EdgeInsets.only(top: 50.0),
                child: Text(
                  'Dipersembahkan oleh:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                ),
              ),
            ),
          ),

          Flexible(
            flex: 1, 
            child: Container(
              width: 200,
              height: 100,
              margin: EdgeInsets.all(20),
              child: Image(
               image: AssetImage('images/logo.png'),
              )
            )
          )
        ],
      ),
      )
    )
    );
  }
  }