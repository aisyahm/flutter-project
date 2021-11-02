import "package:flutter/material.dart";
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PDF1 extends StatelessWidget {
  const PDF1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xffa1ce67),),
      body: Container(
        child: SfPdfViewer.asset('file/doc1.pdf')
        )
    );
  }
}