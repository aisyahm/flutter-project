import 'package:flutter/material.dart';
import 'package:tes/pdf10.dart';
import 'package:tes/pdf11.dart';
import 'package:tes/pdf12.dart';
import 'package:tes/pdf13.dart';
import 'package:tes/pdf14.dart';
import 'package:tes/pdf2.dart';
import 'package:tes/pdf3.dart';
import 'package:tes/pdf4.dart';
import 'package:tes/pdf5.dart';
import 'package:tes/pdf6.dart';
import 'package:tes/pdf7.dart';
import 'package:tes/pdf8.dart';
import 'package:tes/pdf9.dart';
import 'pdf1.dart';

 
class ModulPage extends StatelessWidget {
  const ModulPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (title: Text('Materi'), backgroundColor: Color(0xffa1ce67)),
      body: ListView(
        padding: EdgeInsets.only(top:30),
        children: <Widget>[
          Container(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          
          child:
            InkWell(
                onTap: (){
                  Navigator.push(context, 
                    MaterialPageRoute(builder: (context){
                    return PDF1();}
                    )
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 20),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.brown
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[                          
                      SizedBox(height: 10.0),
                      Text('Stunting dan Penerapan Gizi Seimbang', style: TextStyle(color: Colors.white, fontSize: 15),),
                    ],
                  ),
                ),
              ),
          
          ),
            
          Container(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          
          child:
           InkWell(
                onTap: (){
                  Navigator.push(context, 
                    MaterialPageRoute(builder: (context){
                    return PDF2();}
                    )
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 20),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.brown
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[                          
                      SizedBox(height: 10.0),
                      Text('Pemantauan Tumbuh Kembang Anak', style: TextStyle(color: Colors.white, fontSize: 15),),
                    ],
                  ),
                ),
              ),
          
          ),
          
          Container(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          
          child:
          InkWell(
                onTap: (){
                  Navigator.push(context, 
                    MaterialPageRoute(builder: (context){
                    return PDF3();}
                    )
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 20),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.brown
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[                          
                      SizedBox(height: 10.0),
                      Text('Macam-macam Zat Gizi dan Manfaatnya', style: TextStyle(color: Colors.white, fontSize: 15),),
                    ],
                  ),
                ),
              ),
          ),
          
          Container(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          
          child:
          InkWell(
                onTap: (){
                  Navigator.push(context, 
                    MaterialPageRoute(builder: (context){
                    return PDF4();}
                    )
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 20),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.brown
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[                          
                      SizedBox(height: 10.0),
                      Text('Kandungan Gizi Beras', style: TextStyle(color: Colors.white, fontSize: 15),),
                    ],
                  ),
                ),
              ),
          ),
          
          Container(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          
          child:
          InkWell(
                onTap: (){
                  Navigator.push(context, 
                    MaterialPageRoute(builder: (context){
                    return PDF7();}
                    )
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 20),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.brown
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[                          
                      SizedBox(height: 10.0),
                      Text('Pengenalan Sumber Protein Hewani', style: TextStyle(color: Colors.white, fontSize: 15),),
                    ],
                  ),
                ),
              ),
          ),

          Container(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
         
          child:
            InkWell(
                onTap: (){
                  Navigator.push(context, 
                    MaterialPageRoute(builder: (context){
                    return PDF8();}
                    )
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 20),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.brown
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[                          
                      SizedBox(height: 10.0),
                      Text('Daging yang ASUH', style: TextStyle(color: Colors.white, fontSize: 15),),
                    ],
                  ),
                ),
              ),
          ),
            
            Container(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          
          child:
            InkWell(
                onTap: (){
                  Navigator.push(context, 
                    MaterialPageRoute(builder: (context){
                    return PDF9();}
                    )
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 20),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.brown
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[                          
                      SizedBox(height: 10.0),
                      Text('Ikan yang Baik untuk Pemenuhan Gizi', style: TextStyle(color: Colors.white, fontSize: 15),),
                    ],
                  ),
                ),
              ),
          ),

            Container(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          
          child:
            InkWell(
                onTap: (){
                  Navigator.push(context, 
                    MaterialPageRoute(builder: (context){
                    return PDF10();}
                    )
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 20),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.brown
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[                          
                      SizedBox(height: 10.0),
                      Text('Kandungan Gizi Telur', style: TextStyle(color: Colors.white, fontSize: 15),),
                    ],
                  ),
                ),
              ),
          ),

          Container(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          
          child:
            InkWell(
                onTap: (){
                  Navigator.push(context, 
                    MaterialPageRoute(builder: (context){
                    return PDF11();}
                    )
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 20),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.brown
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[                          
                      SizedBox(height: 10.0),
                      Text('Peran dan Manfaat Minum Susu', style: TextStyle(color: Colors.white, fontSize: 15),),
                    ],
                  ),
                ),
              ),
          ),

          Container(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          
          child:
            InkWell(
                onTap: (){
                  Navigator.push(context, 
                    MaterialPageRoute(builder: (context){
                    return PDF12();}
                    )
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 20),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.brown
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[                          
                      SizedBox(height: 10.0),
                      Text('Stimulasi Psikososial untuk Anak', style: TextStyle(color: Colors.white, fontSize: 15),),
                    ],
                  ),
                ),
              ),
          ),

          Container(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          
          child:
            InkWell(
                onTap: (){
                  Navigator.push(context, 
                    MaterialPageRoute(builder: (context){
                    return PDF13();}
                    )
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 20),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.brown
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[                          
                      SizedBox(height: 10.0),
                      Text('Hygiene dan Sanitasi (Pengolahan Kuliner)', style: TextStyle(color: Colors.white, fontSize: 15),),
                    ],
                  ),
                ),
              ),
          ),

          Container(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          
          child:
            InkWell(
                onTap: (){
                  Navigator.push(context, 
                    MaterialPageRoute(builder: (context){
                    return PDF14();}
                    )
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 20),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.brown
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[                          
                      SizedBox(height: 10.0),
                      Text('Hygiene dan Sanitasi (Keluarga)', style: TextStyle(color: Colors.white, fontSize: 15),),
                    ],
                  ),
                ),
              ),
          ),

          Container(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
         
          child:
          InkWell(
                onTap: (){
                  Navigator.push(context, 
                    MaterialPageRoute(builder: (context){
                    return PDF5();}
                    )
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 20),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.brown
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[                          
                      SizedBox(height: 10.0),
                      Text('Kandungan Gizi Susu', style: TextStyle(color: Colors.white, fontSize: 15),),
                    ],
                  ),
                ),
              ),
          ),
          
          Container(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          
          child:
          InkWell(
                onTap: (){
                  Navigator.push(context, 
                    MaterialPageRoute(builder: (context){
                    return PDF6();}
                    )
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 200),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.brown
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[                          
                      SizedBox(height: 10.0),
                      Text('Mencegah Cacingan', style: TextStyle(color: Colors.white, fontSize: 15),),
                    ],
                  ),
                ),
              ),
          ),
                    
          ]
        ),
      )
      
    
    
    ;
  }
}
