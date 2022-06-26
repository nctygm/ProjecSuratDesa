import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const String baseURL =
    "http://10.0.2.2:8000/api/"; //CODINGAN UNTUK MEMANGGIL BASE URL
const Map<String, String> headers = {"Content-Type": "application/json"};

errorSnackBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.red,
      content: Text(text),
      duration: Duration(seconds: 2),
    ),
  );
}
// DARI BACAAN errorSnackBar SAMPAI PENUTU ADALAH CODINGAN UNTUK MENAMPILKAN
// APABILA LOGIN JIKA SALAH AKAN MUNCUL NOTIF PEMBERITAHUAN
