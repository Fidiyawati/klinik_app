import 'package:cloud_firestore/cloud_firestore.dart';

class Pasien {
  String? id;
  String nomor_rm;
  String nama;
  String tanggal_lahir;
  String nomor_telepon;
  String alamat;

  Pasien({
    this.id,
    required this.nomor_rm,
    required this.nama,
    required this.tanggal_lahir,
    required this.nomor_telepon,
    required this.alamat,
  });

  factory Pasien.fromJson(Map<String, dynamic> json) => Pasien(
        id: json["id"],
        nomor_rm: json["nomor_rm"],
        nama: json["nama"],
        tanggal_lahir: json["tanggal_lahir"],
        nomor_telepon: json["nomor_telepon"],
        alamat: json["alamat"],
      );

  Map<String, dynamic> toMap() => {
        "nomor_rm": nomor_rm,
        "nama": nama,
        "tanggal_lahir": tanggal_lahir,
        "nomor_telepon": nomor_telepon,
        "alamat": alamat,
      };

  Pasien.fromDocumentSnapshot(DocumentSnapshot<Map<String, dynamic>> doc)
      : id = doc.id,
        nomor_rm = doc.data()!['nomor_rm'],
        nama = doc.data()!['nama'],
        tanggal_lahir = doc.data()!['tanggal_lahir'],
        nomor_telepon = doc.data()!['nomor_telepon'],
        alamat = doc.data()!['alamat'];
}
