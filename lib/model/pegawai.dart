import 'package:cloud_firestore/cloud_firestore.dart';

class Pegawai {
  String? id;
  String? nip;
  String? nama;
  String? tanggal_lahir;
  String? nomor_telepon;
  String? email;
  String? password;

  Pegawai(
      {this.id,
      this.nip,
      this.nama,
      this.tanggal_lahir,
      this.nomor_telepon,
      this.email,
      this.password});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nip': nip,
      'nama': nama,
      'tanggal_lahir': tanggal_lahir,
      'nomor_telepon': nomor_telepon,
      'email': email,
      'password': password,
    };
  }

  Pegawai.fromDocumentSnapshot(DocumentSnapshot<Map<String, dynamic>> doc)
      : id = doc.id,
        nip = doc.data()!['nip'],
        nama = doc.data()!['nama'],
        tanggal_lahir = doc.data()!['tanggal_lahir'],
        nomor_telepon = doc.data()!['nomor_telepon'],
        email = doc.data()!['email'],
        password = doc.data()!['password'];
}
