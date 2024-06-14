import 'package:flutter/material.dart';
import '/ui/beranda.dart';
import '/ui/pasien_page.dart';
import '/ui/pegawai_page.dart';
import '/ui/poli_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Klinik APP',
      debugShowCheckedModeBanner: false,
      home: Beranda(),
    );
  }
}
