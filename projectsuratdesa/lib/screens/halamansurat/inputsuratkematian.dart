// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:projectsuratdesa/screens/home_screen.dart';
import 'package:http/http.dart' as http;

class InputSuratKematian extends StatelessWidget {
  bool validator = false;
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _hubunganController = TextEditingController();
  final TextEditingController _nik_almController = TextEditingController();
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _tgl_lahirController = TextEditingController();
  final TextEditingController _jns_kelaminController = TextEditingController();
  final TextEditingController _alamatController = TextEditingController();
  final TextEditingController _agamaController = TextEditingController();
  final TextEditingController _status_kawinController = TextEditingController();
  final TextEditingController _pekerjaanController = TextEditingController();
  final TextEditingController _wrga_negaraController = TextEditingController();
  final TextEditingController _tgl_meninggalController =
      TextEditingController();
  final TextEditingController _tmpt_meninggalController =
      TextEditingController();
  final TextEditingController _penyebabController = TextEditingController();
  final TextEditingController _penentu_mninggalController =
      TextEditingController();
  final TextEditingController _tgl_buatController = TextEditingController();
  final TextEditingController _pernyataan_fileController =
      TextEditingController();
  final TextEditingController _ktp_fileController = TextEditingController();
  final TextEditingController _kk_fileController = TextEditingController();
  final TextEditingController _ktp_alm_fileController = TextEditingController();
  final TextEditingController _kk_alm_fileController = TextEditingController();

  InputSuratKematian({Key? key}) : super(key: key);

  Future simpanData() async {
    final response =
        await http.post(Uri.parse("http://10.0.2.2:8000/api/simpan"), body: {
      "hubungan": _hubunganController.text,
      "nik_alm": _nik_almController.text,
      "nama": _namaController.text,
      "tgl_lahir": _tgl_lahirController.text,
      "jns_kelamin": _jns_kelaminController.text,
      "alamat": _alamatController.text,
      "agama": _agamaController.text,
      "status_kawin": _status_kawinController.text,
      "pekerjaan": _pekerjaanController.text,
      "wrga_negara": _wrga_negaraController.text,
      "tgl_meninggal": _tgl_meninggalController.text,
      "tmpt_meninggal": _tmpt_meninggalController.text,
      "penyebab": _penyebabController.text,
      "penentu_mninggal": _penentu_mninggalController.text,
      "tgl_buat": _tgl_buatController.text,
      "pernyataan_file": _pernyataan_fileController.text,
      "ktp_file": _ktp_alm_fileController.text,
      "kk_file": _kk_alm_fileController.text,
      "ktp_alm_file": _ktp_alm_fileController.text,
      "kk_alm_file": _kk_alm_fileController.text,
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
                controller: _nik_almController,
                decoration: InputDecoration(
                    hintText: 'NIK',
                    labelText: 'NIK Almarhum',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              const Padding(padding: EdgeInsets.only(top: 15)),
              TextField(
                controller: _namaController,
                decoration: InputDecoration(
                    hintText: 'Nama',
                    labelText: 'Masukan Nama',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              const Padding(padding: EdgeInsets.only(top: 15)),
              TextField(
                controller: _tgl_lahirController,
                decoration: InputDecoration(
                    hintText: 'Tanngal Lahir',
                    labelText: 'Masukan Tempat Lahir',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              const Padding(padding: EdgeInsets.only(top: 15)),
              TextField(
                controller: _jns_kelaminController,
                decoration: InputDecoration(
                    hintText: 'Jenis Kelamin',
                    labelText: 'Jenis Kelamin',
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
                controller: _agamaController,
                decoration: InputDecoration(
                    hintText: 'Agama',
                    labelText: 'Masukan Agama',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              const Padding(padding: EdgeInsets.only(top: 15)),
              TextField(
                controller: _status_kawinController,
                decoration: InputDecoration(
                    hintText: 'Status Kawin',
                    labelText: 'Masukan Status Perkawinan',
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
                controller: _wrga_negaraController,
                decoration: InputDecoration(
                    hintText: 'Warga Negara',
                    labelText: 'Masukan Kewarganegaraan',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              const Padding(padding: EdgeInsets.only(top: 15)),
              TextField(
                controller: _tgl_meninggalController,
                decoration: InputDecoration(
                    hintText: 'Tanggal Meninggal',
                    labelText: 'Masukan Tanggal Meninggal',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),

              const Padding(padding: EdgeInsets.only(top: 15)),
              TextField(
                controller: _tmpt_meninggalController,
                decoration: InputDecoration(
                    hintText: 'Tempat Meninggal',
                    labelText: 'Masukan Tempat Meninggal',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              const Padding(padding: EdgeInsets.only(top: 15)),
              TextField(
                controller: _penyebabController,
                decoration: InputDecoration(
                    hintText: 'Penyebab',
                    labelText: 'Masukan Penyebab Meninggal',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              const Padding(padding: EdgeInsets.only(top: 15)),
              TextField(
                controller: _penentu_mninggalController,
                decoration: InputDecoration(
                    hintText: 'Penentu Meninggal',
                    labelText: 'Masukan Penentu',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
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
                controller: _pernyataan_fileController,
                decoration: InputDecoration(
                    hintText: 'Pernyataan',
                    labelText: 'Masukan Surat Pernyataan',
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
                    hintText: 'Kartu Kelurga',
                    labelText: 'Upload Kertu Keluarga',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              const Padding(padding: EdgeInsets.only(top: 15)),
              TextField(
                controller: _ktp_alm_fileController,
                decoration: InputDecoration(
                    hintText: 'KTP Almarhum',
                    labelText: 'Upload KTP Almarhum',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              const Padding(padding: EdgeInsets.only(top: 15)),
              TextField(
                controller: _kk_alm_fileController,
                decoration: InputDecoration(
                    hintText: 'KK Almarhum,',
                    labelText: 'Upload KK Almarhum',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              //DISINI
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
    title: const Text('Form Surat Kematian'),
  );
}
//CODINGAN INI ADALAH HALAMAN INPUT SURAT