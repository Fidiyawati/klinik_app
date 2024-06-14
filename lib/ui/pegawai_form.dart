import 'package:flutter/material.dart';

class PegawaiForm extends StatefulWidget {
  PegawaiForm({Key? key}) : super(key: key);
  _PegawaiFormState createState() => _PegawaiFormState();
}

class _PegawaiFormState extends State<PegawaiForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tambah Pegawai")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextField(decoration: InputDecoration(labelText: "NIP")),
              SizedBox(height: 20),
              TextField(decoration: InputDecoration(labelText: "Nama")),
              SizedBox(height: 20),
              TextField(
                  decoration: InputDecoration(labelText: "Tanggal lahir")),
              SizedBox(height: 20),
              TextField(
                  decoration: InputDecoration(labelText: "Nomor telepon")),
              SizedBox(height: 20),
              TextField(decoration: InputDecoration(labelText: "Email")),
              SizedBox(height: 20),
              TextField(decoration: InputDecoration(labelText: "Password ")),
              SizedBox(height: 20),
              ElevatedButton(onPressed: () {}, child: Text("Simpan"))
            ],
          ),
        ),
      ),
    );
  }
}
