import 'package:flutter/material.dart';
// import 'calc_page.dart';
import 'modul_page.dart';
import 'test_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: Scaffold(
      appBar: AppBar (title: Text('Home'), backgroundColor: Color(0xffa1ce67)),
      body: Column(          
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset('images/stunting.jpg'),
              )
            ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Flexible(flex: 1, child:
                    ElevatedButton (
                      child: Container(
                        height: 120,
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                        child: Column(
                          children: <Widget>[
                            Image.asset('images/test.png', height: 60,),
                            SizedBox(height: 10.0),
                            Text('Uji Pengetahuan', style: TextStyle(color: Colors.black)),
                          ],
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context, 
                          MaterialPageRoute(builder: (context){
                            return TestPage();
                            }
                          )
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white)
                    )
                  ),

                  Flexible(flex:1, child:  
                    ElevatedButton (
                      child: Container(
                        height: 120,
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                        child: Column(
                          children: <Widget>[
                            Image.asset('images/modul.png', height: 60,),
                            SizedBox(height: 10.0),
                            Text('Modul Belajar', style: TextStyle(color: Colors.black)),
                          ],
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context, 
                          MaterialPageRoute(builder: (context){
                            return ModulPage();
                            }
                          )
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white)
                    )
                  ),

                ]
              )
            
          ]
      ),
    )
    );
  }
}