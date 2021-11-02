import 'package:aplikasi_kimiaku/utils/document_getter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class Document1 extends StatefulWidget {
  final int documentNum;
  Document1({required this.documentNum});
  @override
  _Document1State createState() => _Document1State();
}

class _Document1State extends State<Document1> {
  String? localPath;
  late String documentPath;
  late String docTitle;

  @override
  void initState() {
    switch (widget.documentNum) {
      case 1:
        docTitle = "Materi Asam Basa";
        documentPath =
            "https://firebasestorage.googleapis.com/v0/b/aplikasi-kimia-3753c.appspot.com/o/materi%20asam%20basa%201.pdf?alt=media&token=4c05b239-dc07-47a3-9e20-7d1692b3006b";
        break;
      case 2:
        docTitle = "Materi Iodimetri";
        documentPath =
            "https://firebasestorage.googleapis.com/v0/b/aplikasi-kimia-3753c.appspot.com/o/materi%20iodimetri%201.pdf?alt=media&token=f303e4e5-7211-40bc-a10d-c650a58a71ee";
        break;
      case 3:
        docTitle = "Materi Kompleksometri";
        documentPath =
            "https://firebasestorage.googleapis.com/v0/b/aplikasi-kimia-3753c.appspot.com/o/materi%20kompleksometri%201.pdf?alt=media&token=975db1b3-3f87-4b2b-a1e4-8a214c46ce34";
        break;
      case 4:
        docTitle = "Sistem Periodik";
        documentPath =
            "https://firebasestorage.googleapis.com/v0/b/aplikasi-kimia-3753c.appspot.com/o/sistem_periodik-dikonversi.pdf?alt=media&token=0e062473-e5d8-4d5c-8a45-766e868471c0";
        break;
      case 5:
        docTitle = "Soal Asam Basa";
        documentPath =
            "https://firebasestorage.googleapis.com/v0/b/aplikasi-kimia-3753c.appspot.com/o/soal%20asam%20basa-dikonversi.pdf?alt=media&token=075b0af8-e003-4b53-a8c2-9251a73d75c1";
        break;
      case 6:
        docTitle = "Soal Iodimetri";
        documentPath =
            "https://firebasestorage.googleapis.com/v0/b/aplikasi-kimia-3753c.appspot.com/o/soal%20iodometri-dikonversi.pdf?alt=media&token=7aa11d5a-19f3-4853-aff2-f2079b7849f7";
        break;
      case 7:
        docTitle = "Soal Kompleksometri";
        documentPath =
            "https://firebasestorage.googleapis.com/v0/b/aplikasi-kimia-3753c.appspot.com/o/soal%20kompleksometri-dikonversi.pdf?alt=media&token=6fb4d5d0-da1b-4133-9f0b-136bee1bc08f";
        break;
      case 8:
        docTitle = "Daftar Senyawa Kimia";
        documentPath =
            "https://firebasestorage.googleapis.com/v0/b/aplikasi-kimia-3753c.appspot.com/o/senyawa-kimia.pdf?alt=media&token=f26301ed-b886-47db-bd96-c9197483df3d";
        break;
      default:
    }

    super.initState();

    DocumentGetter.loadPDF(documentPath).then((value) {
      setState(() {
        localPath = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(docTitle.toUpperCase()),
      ),
      // ignore: unnecessary_null_comparison
      body: localPath != null
          ? PDFView(filePath: localPath)
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
