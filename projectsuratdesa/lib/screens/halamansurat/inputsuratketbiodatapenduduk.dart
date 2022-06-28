// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:projectsuratdesa/screens/home_screen.dart';
import 'package:http/http.dart' as http;

class inputsuratketbiodatapenduduk extends StatelessWidget {
  bool validator = false;
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _nama_kpl_kluargaController =
      TextEditingController();
  final TextEditingController _alamatController = TextEditingController();
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _nikController = TextEditingController();
  final TextEditingController _jns_kelaminController = TextEditingController();
  final TextEditingController _tmpt_lahirController = TextEditingController();
  final TextEditingController _tgl_lahirController = TextEditingController();
  final TextEditingController _hubunganController = TextEditingController();
  final TextEditingController _akta_kelahira_fileController =
      TextEditingController();
  final TextEditingController _akta_perkawinan_fileController =
      TextEditingController();
  final TextEditingController _ijazah_fileController = TextEditingController();
  final TextEditingController _kk_fileController = TextEditingController();
  final TextEditingController _ktp_fileController = TextEditingController();

  inputsuratketbiodatapenduduk({Key? key}) : super(key: key);

  Future simpanData() async {
    final response = await http
        .post(Uri.parse("http://10.0.2.2:8000/api/srtbiodata"), body: {
      "nama_kpl_kluarga": _nama_kpl_kluargaController.text,
      "alamat": _alamatController.text,
      "nama": _namaController.text,
      "nik": _nikController.text,
      "jns_kelamin": _jns_kelaminController.text,
      "tmpt_lahir": _tmpt_lahirController.text,
      "tgl_lahir": _tgl_lahirController.text,
      "hubungan": _hubunganController.text,
      "akta_kelahira_file": _akta_kelahira_fileController.text,
      "akta_perkawinan_file": _akta_perkawinan_fileController.text,
      "ijazah_file": _ijazah_fileController.text,
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
                controller: _nama_kpl_kluargaController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  hintText: 'Nama Kepala Keluarga',
                  labelText: 'Masukan Nama Kepala Keluarga',
                ),
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
                controller: _namaController,
                decoration: InputDecoration(
                    hintText: 'Nama Anak',
                    labelText: 'Masukan Nama Anak',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              const Padding(padding: EdgeInsets.only(top: 15)),
              TextField(
                controller: _nikController,
                decoration: InputDecoration(
                    hintText: 'NIK',
                    labelText: 'Masukan NIK',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              const Padding(padding: EdgeInsets.only(top: 15)),
              TextField(
                controller: _jns_kelaminController,
                decoration: InputDecoration(
                    hintText: 'Jenis Kelamin',
                    labelText: 'Masukan Jenis Kelamin',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              const Padding(padding: EdgeInsets.only(top: 15)),
              TextField(
                controller: _tmpt_lahirController,
                decoration: InputDecoration(
                    hintText: 'Tempat Lahir',
                    labelText: 'Masukan Tempat Lahir',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              const Padding(padding: EdgeInsets.only(top: 15)),
              TextField(
                controller: _tgl_lahirController,
                decoration: InputDecoration(
                    hintText: 'Tanggal Lahir',
                    labelText: 'Masukan Tanggal Lahir',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              const Padding(padding: EdgeInsets.only(top: 15)),
              TextField(
                controller: _hubunganController,
                decoration: InputDecoration(
                    hintText: 'Hubungan',
                    labelText: 'Masukan Hubungan',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              const Padding(padding: EdgeInsets.only(top: 15)),
              TextField(
                controller: _akta_kelahira_fileController,
                decoration: InputDecoration(
                    hintText: 'Akta Kelahiran',
                    labelText: 'Upload Akta Kelahiran',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              const Padding(padding: EdgeInsets.only(top: 15)),
              TextField(
                controller: _akta_perkawinan_fileController,
                decoration: InputDecoration(
                    hintText: 'Akta Perkawinan',
                    labelText: 'Upload Akta Perkawinan',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              const Padding(padding: EdgeInsets.only(top: 15)),
              TextField(
                controller: _ijazah_fileController,
                decoration: InputDecoration(
                    hintText: 'Ijazah',
                    labelText: 'Upload Ijazah',
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
    title: const Text('Form Surat Ket Biodata Penduduk'),
  );
}
//CODINGAN INI ADALAH HALAMAN INPUT SURAT tidak mampu