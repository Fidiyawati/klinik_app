import 'package:flutter/material.dart';
import '/widget/sidebar.dart';
import '/ui/pasien_form.dart';
import '/model/pasien.dart';
import 'pasien_item.dart';

class pasienPage extends StatefulWidget {
  const pasienPage({super.key});

  @override
  State<pasienPage> createState() => _pasienPageState();
}

class _pasienPageState extends State<pasienPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(),
      appBar: AppBar(
        title: Text('Data Pasien'),
        actions: [
          GestureDetector(
            child: Icon(Icons.add),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PasienForm()));
            },
          )
        ],
      ),
      body: ListView(
        children: [
          PasienItem(
              pasien: Pasien(
            nomor_rm: '200',
            nama: 'Fidiya Wati',
            tanggal_lahir: '08 AGUSTUS 2004',
            nomor_telepon: '081234567',
            alamat: 'Fidiyawty8sss@gmail.com',
          ))
        ],
      ),
    );
  }
}
