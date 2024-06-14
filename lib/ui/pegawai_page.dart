import 'package:flutter/material.dart';
import '/widget/sidebar.dart';
import '/ui/pegawai_form.dart';
import '/model/pegawai.dart';
import 'pegawai_item.dart';

class pegawaiPage extends StatefulWidget {
  pegawaiPage({super.key});

  @override
  State<pegawaiPage> createState() => _pegawaiPageState();
}

class _pegawaiPageState extends State<pegawaiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(),
      appBar: AppBar(
        title: Text('Data Pegawai'),
        actions: [
          GestureDetector(
            child: Icon(Icons.add),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PegawaiForm()));
            },
          )
        ],
      ),
      body: ListView(
        children: [
          PegawaiItem(
              pegawai: Pegawai(
                  nip: '19220518',
                  nama: "Fidiya wati",
                  tanggal_lahir: '08 AGUSTUS 2004',
                  nomor_telepon: '0811111111',
                  email: 'Fidiyawty8@gmail.com',
                  password: 'fidiyawati'))
        ],
      ),
    );
  }
}
