import "package:flutter/material.dart";
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PDF6 extends StatelessWidget {
  const PDF6({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xffa2ce67),),
      body: Container(
        child: SfPdfViewer.asset('file/doc6.pdf')
        )
    );
  }
}