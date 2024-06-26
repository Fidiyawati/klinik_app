import 'package:flutter/material.dart';
import '/widget/sidebar.dart';
import '../model/poli.dart';
import 'poli_form.dart';
import 'poli_item.dart';

class PoliPage extends StatefulWidget {
  const PoliPage({super.key});

  @override
  State<PoliPage> createState() => _PoliPageState();
}

class _PoliPageState extends State<PoliPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(),
      appBar: AppBar(
        title: Text("Data Poli"),
        actions: [
          GestureDetector(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.add),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PoliForm()));
            },
          )
        ],
      ),
      body: ListView(
        children: [
          PoliItem(poli: Poli(nm_poli: "Poli Anak")),
          PoliItem(poli: Poli(nm_poli: "Poli Kandungan")),
          PoliItem(poli: Poli(nm_poli: "Poli Gigi")),
          PoliItem(poli: Poli(nm_poli: "Poli THT")),
        ],
      ),
    );
  }
}
