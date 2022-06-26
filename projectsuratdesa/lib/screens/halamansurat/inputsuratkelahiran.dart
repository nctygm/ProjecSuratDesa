// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:projectsuratdesa/screens/home_screen.dart';
import 'package:http/http.dart' as http;

class InputSuratKelahiran extends StatelessWidget {
  bool validator = false;
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _hubunganController = TextEditingController();
  final TextEditingController _nama_anakController = TextEditingController();
  final TextEditingController _tgl_lahirController = TextEditingController();
  final TextEditingController _tempat_lahirController = TextEditingController();
  final TextEditingController _jns_kelaminController = TextEditingController();
  final TextEditingController _nama_ayahController = TextEditingController();
  final TextEditingController _nama_ibuController = TextEditingController();
  final TextEditingController _alamatController = TextEditingController();
  final TextEditingController _rtController = TextEditingController();
  final TextEditingController _rwController = TextEditingController();
  final TextEditingController _tgl_buatController = TextEditingController();
  final TextEditingController _buktikel_fileController =
      TextEditingController();
  final TextEditingController _kk_fileController = TextEditingController();
  final TextEditingController _ktp_fileController = TextEditingController();
  final TextEditingController _bukunikah_fileController =
      TextEditingController();

  InputSuratKelahiran({Key? key}) : super(key: key);

  Future simpanData() async {
    final response = await http
        .post(Uri.parse("http://10.0.2.2:8000/api/HalamanSurat"), body: {
      "hubungan": _hubunganController.text,
      "nama_anak": _nama_anakController.text,
      "tgl_lahir": _tgl_lahirController.text,
      "tempat_lahir": _tempat_lahirController.text,
      "jns_kelamin": _jns_kelaminController.text,
      "nama_ayah": _nama_ayahController.text,
      "nama_ibu": _nama_ibuController.text,
      "alamat": _alamatController.text,
      "rt": _rtController.text,
      "rw": _rwController.text,
      "tgl_buat": _tgl_buatController.text,
      "buktikel_file": _buktikel_fileController.text,
      "kk_file": _kk_fileController.text,
      "ktp_file": _ktp_fileController.text,
      "bukunikah_file": _bukunikah_fileController.text,
    });
    print(response.body);

    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Container(
        padding: EdgeInsets.all(15.0),
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
              Padding(padding: EdgeInsets.only(top: 15)),
              TextField(
                controller: _nama_anakController,
                decoration: InputDecoration(
                    hintText: 'Nama Anak',
                    labelText: 'Masukan Nama Anak',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              Padding(padding: EdgeInsets.only(top: 15)),
              TextField(
                controller: _tgl_lahirController,
                decoration: InputDecoration(
                    hintText: 'Tanggal Lahir',
                    labelText: 'Masukan Tanggal Lahir Anak',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              Padding(padding: EdgeInsets.only(top: 15)),
              TextField(
                controller: _tempat_lahirController,
                decoration: InputDecoration(
                    hintText: 'Tempat Lahir',
                    labelText: 'Masukan Tempat Lahir',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              Padding(padding: EdgeInsets.only(top: 15)),
              TextField(
                controller: _jns_kelaminController,
                decoration: InputDecoration(
                    hintText: 'Jenis Kelamin',
                    labelText: 'Jenis Kelamin',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              Padding(padding: EdgeInsets.only(top: 15)),
              TextField(
                controller: _nama_ayahController,
                decoration: InputDecoration(
                    hintText: 'Nama Ayah',
                    labelText: 'Nama Ayah',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              const Padding(padding: EdgeInsets.only(top: 15)),
              TextField(
                controller: _nama_ibuController,
                decoration: InputDecoration(
                    hintText: 'Nama Ibu',
                    labelText: 'Nama Ibu',
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
                controller: _rtController,
                decoration: InputDecoration(
                    hintText: 'RT',
                    labelText: 'Masukan RT',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              const Padding(padding: EdgeInsets.only(top: 15)),
              TextField(
                controller: _rwController,
                decoration: InputDecoration(
                    hintText: 'RW',
                    labelText: 'Masukan RW',
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
                controller: _buktikel_fileController,
                decoration: InputDecoration(
                    hintText: 'Bukti Lahir',
                    labelText: 'Masukan Bukti Kelahiran Bidan / RS',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              const Padding(padding: EdgeInsets.only(top: 15)),
              TextField(
                controller: _kk_fileController,
                decoration: InputDecoration(
                    hintText: 'Kartu Keluarga',
                    labelText: 'Masukan Kartu Keluarga',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              const Padding(padding: EdgeInsets.only(top: 15)),
              TextField(
                controller: _ktp_fileController,
                decoration: InputDecoration(
                    hintText: 'KTP',
                    labelText: 'Masukan KTP',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              const Padding(padding: EdgeInsets.only(top: 15)),
              TextField(
                controller: _bukunikah_fileController,
                decoration: InputDecoration(
                    hintText: 'Bukti Nikah',
                    labelText: 'Masukan Bukti Nikah',
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
    backgroundColor: Color(0xFF84AB5C),
    leading: IconButton(
        icon: Image.asset('assets/png/backbutton.png'), onPressed: () {}),
    centerTitle: true,
    title: Text('Form Surat Kelahiran'),
  );
}
//CODINGAN INI ADALAH HALAMAN INPUT SURAT