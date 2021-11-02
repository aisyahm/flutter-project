import 'package:flutter/material.dart';
import 'webview.dart';
 
class TestPage extends StatelessWidget {
  const TestPage({ Key? key }) : super(key: key);
  final String url = "https://docs.google.com/forms/d/e/1FAIpQLSd4sH7lj1wp3f_uNCF22FDAq5dxX-oUiayFlfogIpYqcorLrw/viewform?usp=sf_link";
  final String url2 = "https://docs.google.com/forms/d/e/1FAIpQLSdfOVTzLf-dob8pYtn_hvpAbT1QCw9g3FAVF7CdaZQD8BdkMA/viewform?usp=sf_link";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (title: Text('Uji Pengetahuan'), backgroundColor: Color(0xffa1ce67)),
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            
            Flexible(flex: 1, child: InkWell(
                onTap: (){
                  Navigator.push(context, 
                    MaterialPageRoute(builder: (context){
                    return WebViewContainer(url);}
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
                      Text('Uji Pengetahuan 1', style: TextStyle(color: Colors.white, fontSize: 20),),
                    ],
                  ),
                ),
              ),
            ),
          

          Flexible(flex: 1, child: InkWell(
                onTap: (){
                  Navigator.push(context, 
                    MaterialPageRoute(builder: (context){
                    return WebViewContainer(url2);}
                    )
                  );
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.brown
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[                          
                      SizedBox(height: 10.0),
                      Text('Uji Pengetahuan 2', style: TextStyle(color: Colors.white, fontSize: 20),),
                    ],
                  ),
                ),
              ),
            )
          

          ]
        ),
      ),
    
    );
  }
}
