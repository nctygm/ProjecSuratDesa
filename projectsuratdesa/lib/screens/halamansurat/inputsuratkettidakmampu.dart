// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:projectsuratdesa/screens/home_screen.dart';
import 'package:http/http.dart' as http;

class inputsuratkettidakmampu extends StatelessWidget {
  bool validator = false;
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _hubunganController = TextEditingController();
  final TextEditingController _jnssurat_pengantarController =
      TextEditingController();
  final TextEditingController _nama_terkaitController = TextEditingController();
  final TextEditingController _pekerjaanController = TextEditingController();
  final TextEditingController _alamatController = TextEditingController();
  final TextEditingController _tujuanController = TextEditingController();
  final TextEditingController _tgl_buatController = TextEditingController();
  final TextEditingController _pengantar_fileController =
      TextEditingController();
  final TextEditingController _pernyataan_fileController =
      TextEditingController();
  final TextEditingController _ktp_fileController = TextEditingController();
  final TextEditingController _kk_fileController = TextEditingController();

  inputsuratkettidakmampu({Key? key}) : super(key: key);

  Future simpanData() async {
    final response = await http
        .post(Uri.parse("http://10.0.2.2:8000/api/srttdkmampu"), body: {
      "hubungan": _hubunganController.text,
      "jnssurat_pengantar": _jnssurat_pengantarController.text,
      "nama_terkait": _nama_terkaitController.text,
      "pekerjaan": _pekerjaanController.text,
      "alamat": _alamatController.text,
      "tujuan": _tujuanController.text,
      "tgl_buat": _tgl_buatController.text,
      "pengantar_file": _pengantar_fileController.text,
      "pernyataan_file": _pernyataan_fileController.text,
      "ktp_file": _ktp_fileController.text,
      "kk_file": _kk_fileController.text,
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
                controller: _hubunganController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  hintText: 'Hubungan',
                  labelText: 'Hubungan',
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 15)),
              TextField(
                controller: _jnssurat_pengantarController,
                decoration: InputDecoration(
                    hintText: 'Jenis Surat',
                    labelText: 'Jenis Surat Pengantar',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              const Padding(padding: EdgeInsets.only(top: 15)),
              TextField(
                controller: _nama_terkaitController,
                decoration: InputDecoration(
                    hintText: 'Nama Terkait',
                    labelText: 'Masukan Nama Terkait',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              const Padding(padding: EdgeInsets.only(top: 15)),
              TextField(
                controller: _pekerjaanController,
                decoration: InputDecoration(
                    hintText: 'Pekerjaan',
                    labelText: 'Masukan Pekerjaan',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              const Padding(padding: EdgeInsets.only(top: 15)),
              TextField(
                controller: _alamatController,
                maxLines: 3,
                decoration: InputDecoration(
                    hintText: 'Alamat',
                    labelText: 'Masukan Alamat',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              const Padding(padding: EdgeInsets.only(top: 15)),
              TextField(
                controller: _tujuanController,
                decoration: InputDecoration(
                    hintText: 'Tujuan',
                    labelText: 'Tujuan Pembuatan Surat',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              const Padding(padding: EdgeInsets.only(top: 15)),
              TextField(
                controller: _tgl_buatController,
                decoration: InputDecoration(
                    hintText: 'Tanggal Buat',
                    labelText: 'Masukan Tangga Buat Surat',
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
                controller: _kk_fileController,
                decoration: InputDecoration(
                    hintText: 'Kartu Keluarga',
                    labelText: 'Upload Kartu Keluarga',
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
    title: const Text('Form Surat Ket Tidak Mampu'),
  );
}
//CODINGAN INI ADALAH HALAMAN INPUT SURAT tidak mampu