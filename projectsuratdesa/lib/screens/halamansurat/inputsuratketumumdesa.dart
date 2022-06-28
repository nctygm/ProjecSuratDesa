// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:projectsuratdesa/screens/home_screen.dart';
import 'package:http/http.dart' as http;

class inputsuratketumumdesa extends StatelessWidget {
  bool validator = false;
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _tujuanController = TextEditingController();
  final TextEditingController _tgl_buatController = TextEditingController();
  final TextEditingController _kk_fileController = TextEditingController();
  final TextEditingController _ktp_fileController = TextEditingController();

  inputsuratketumumdesa({Key? key}) : super(key: key);

  Future simpanData() async {
    final response = await http
        .post(Uri.parse("http://10.0.2.2:8000/api/srtumumdesa"), body: {
      "tujuan": _tujuanController.text,
      "tgl_buat": _tgl_buatController.text,
      "kk_file": _kk_fileController.text,
      "ktp_file": _ktp_fileController.text,
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
                controller: _tujuanController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  hintText: 'Tujuan',
                  labelText: 'Tujuan Pembuatan surat',
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 15)),
              TextField(
                controller: _tgl_buatController,
                decoration: InputDecoration(
                    hintText: 'Tanggal Buat',
                    labelText: 'Masukan Tanggal Buat',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              const Padding(padding: EdgeInsets.only(top: 15)),
              TextField(
                controller: _kk_fileController,
                decoration: InputDecoration(
                    hintText: 'KK',
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
    title: const Text('Form Surat Ket Umum Desa'),
  );
}
//CODINGAN INI ADALAH HALAMAN INPUT SURAT tidak mampu