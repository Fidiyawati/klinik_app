import 'package:flutter/material.dart';

class PasienForm extends StatefulWidget {
  PasienForm({Key? key}) : super(key: key);
  _PasienFormState createState() => _PasienFormState();
}

class _PasienFormState extends State<PasienForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tambah Pasien")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextField(
                  decoration: const InputDecoration(labelText: "Nama rm")),
              SizedBox(height: 20),
              TextField(
                  decoration: const InputDecoration(labelText: "Nama Pasien")),
              SizedBox(height: 20),
              TextField(
                  decoration:
                      const InputDecoration(labelText: "Tanggal lahir")),
              SizedBox(height: 20),
              TextField(
                  decoration:
                      const InputDecoration(labelText: "Nomor telepon")),
              SizedBox(height: 20),
              TextField(decoration: const InputDecoration(labelText: "Alamat")),
              SizedBox(height: 20),
              ElevatedButton(onPressed: () {}, child: const Text("Simpan"))
            ],
          ),
        ),
      ),
    );
  }
}
