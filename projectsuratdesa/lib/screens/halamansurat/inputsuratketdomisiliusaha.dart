// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:projectsuratdesa/screens/home_screen.dart';
import 'package:http/http.dart' as http;

class inputsuratketdomisiliusaha extends StatelessWidget {
  bool validator = false;
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _jenis_usahaController = TextEditingController();
  final TextEditingController _nama_usahaController = TextEditingController();
  final TextEditingController _alamatController = TextEditingController();
  final TextEditingController _tgl_buatController = TextEditingController();
  final TextEditingController _pengantar_fileController =
      TextEditingController();
  final TextEditingController _kk_fileController = TextEditingController();
  final TextEditingController _ktp_fileController = TextEditingController();
  final TextEditingController _akta_usaha_fileController =
      TextEditingController();
  final TextEditingController _pernyataan_fileController =
      TextEditingController();
  final TextEditingController _kepemilikan_fileController =
      TextEditingController();

  inputsuratketdomisiliusaha({Key? key}) : super(key: key);

  Future simpanData() async {
    final response = await http
        .post(Uri.parse("http://10.0.2.2:8000/api/srtdomisiliusaha"), body: {
      "jenis_usaha": _jenis_usahaController.text,
      "nama_usaha": _nama_usahaController.text,
      "alamat": _alamatController.text,
      "tgl_buat": _tgl_buatController.text,
      "pengantar_file": _pengantar_fileController.text,
      "kk_file": _kk_fileController.text,
      "ktp_file": _ktp_fileController.text,
      "akta_usaha_file": _akta_usaha_fileController.text,
      "pernyataan_file": _pernyataan_fileController.text,
      "kepemilikan_file": _kepemilikan_fileController.text,
    });
    print(response.body);

    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Container(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: _formkey,
          child: ListView(
            children: <Widget>[
              TextField(
                controller: _jenis_usahaController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  hintText: 'Jenis Usaha',
                  labelText: 'Masukan Jenis Usaha',
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 15)),
              TextField(
                controller: _nama_usahaController,
                maxLines: 3,
                decoration: InputDecoration(
                    hintText: 'Nama Usaha',
                    labelText: 'Masukan Nama Usaha',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              const Padding(padding: EdgeInsets.only(top: 15)),
              TextField(
                controller: _alamatController,
                decoration: InputDecoration(
                    hintText: 'Alamat',
                    labelText: 'Masukan Alamatn Usaha',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              const Padding(padding: EdgeInsets.only(top: 15)),
              TextField(
                controller: _tgl_buatController,
                decoration: InputDecoration(
                    hintText: 'Tanggal Buat',
                    labelText: 'Tanggal Buat Surat',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              const Padding(padding: EdgeInsets.only(top: 15)),
              TextField(
                controller: _pengantar_fileController,
                decoration: InputDecoration(
                    hintText: 'Surat Pengantar',
                    labelText: 'Upload Surat Pengantar',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              const Padding(padding: EdgeInsets.only(top: 15)),
              TextField(
                controller: _kk_fileController,
                decoration: InputDecoration(
                    hintText: 'Kartu Keluarga',
                    labelText: 'Upload Kartu Keluarga',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              const Padding(padding: EdgeInsets.only(top: 15)),
              TextField(
                controller: _ktp_fileController,
                decoration: InputDecoration(
                    hintText: 'KTP',
                    labelText: 'Upload KTP',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              const Padding(padding: EdgeInsets.only(top: 15)),
              TextField(
                controller: _akta_usaha_fileController,
                decoration: InputDecoration(
                    hintText: 'Akta Usaha',
                    labelText: 'Upload Akta Usaha',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              const Padding(padding: EdgeInsets.only(top: 15)),
              TextField(
                controller: _pernyataan_fileController,
                decoration: InputDecoration(
                    hintText: 'Surat Pernyataan',
                    labelText: 'Upload Surat Pernyataan',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              const Padding(padding: EdgeInsets.only(top: 15)),
              TextField(
                controller: _kepemilikan_fileController,
                decoration: InputDecoration(
                    hintText: 'Surat Kepemelikikan',
                    labelText: 'Upload Surat Kepemilikan',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              //================
              const Padding(padding: EdgeInsets.only(top: 15)),
              ElevatedButton(
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      simpanData().then((value) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()));
                      });
                    }
                  },
                  child: const Text('SIMPAN')),
            ],
          ),
        ),
      ),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: const Color(0xFF84AB5C),
    leading: IconButton(
        icon: Image.asset('assets/png/backbutton.png'),
        onPressed: () {
          (BuildContext context) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomeScreen()));
          };
        }),
    centerTitle: true,
    title: const Text('Form Surat Ket Domisili Usaha'),
  );
}
//CODINGAN INI ADALAH HALAMAN INPUT SURAT tidak mampu