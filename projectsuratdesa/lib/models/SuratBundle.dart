import 'package:flutter/material.dart';
import 'package:projectsuratdesa/screens/halamansurat/inputsuratkelahiran.dart';
import 'package:projectsuratdesa/screens/home_screen.dart';

class SuratBundles {
  final int id;
  final String title,
      description,
      imageSrc,
      syarat,
      satu,
      dua,
      tiga,
      empat,
      lima;
  final Color color;
  final Widget destination;

  SuratBundles(
      {required this.id,
      required this.satu,
      required this.dua,
      required this.tiga,
      required this.empat,
      required this.lima,
      required this.title,
      required this.description,
      required this.imageSrc,
      required this.syarat,
      required this.color,
      required this.destination});
}

// Demo list
List<SuratBundles> suratBundles = [
  SuratBundles(
      id: 1,
      satu: "Surat Keterangan Lahir",
      dua: 'KTP Ibu',
      tiga: 'Surat Ket Lahir RS',
      empat: "Upload Kartu Keluarga",
      lima: "Bukti Nikah",
      title: "Surat Keterangan Kelahiran",
      description: "Adalah surat pengantar untuk pembuatan akta lahir",
      imageSrc: "assets/png/kelahiran.png",
      syarat: "Syarat yang diperlukan :",
      color: const Color(0xFF2DBBD8),
      destination: InputSuratKelahiran()),
  SuratBundles(
      id: 2,
      satu: "Surat Keterangan Kematian",
      dua: 'KTP dan KK Pemohon',
      tiga: 'Surat Petugas/Dokter',
      empat: "KTP (Yang Meninggal)",
      lima: "KK (Yang Meninggal)",
      title: "Surat Keterangan Kematian",
      description: "Adalah surat pengantar untuk keterangan Kematian",
      imageSrc: "assets/png/kematian.png",
      syarat: "Syarat yang diperlukan :",
      color: Colors.red,
      destination: const HomeScreen()),
  SuratBundles(
      id: 3,
      satu: "Surat Keterangan Lahir",
      dua: 'Ket. Tidak Mampu',
      tiga: 'Surat Pengantar RT/RW',
      empat: "KTP",
      lima: "Kartu Keluarga",
      title: "Surat Keterangan Tidak Mampu",
      description: "Adalah surat Keterangan Tidak Mampu",
      imageSrc: "assets/png/tidak_mampu.png",
      syarat: "Syarat yang diperlukan :",
      color: Colors.green,
      destination: const HomeScreen()),
  SuratBundles(
      id: 4,
      satu: "Surat Keterangan Lahir",
      dua: 'Ijazah',
      tiga: 'Akta Kelahiran',
      empat: "Katu Keluarga & KTP",
      lima: "Akta Perkawinan",
      title: "Surat Keterangan Biodata Penduduk",
      description: "Adalah surat Keterangan Biodata Penduduk",
      imageSrc: "assets/png/biodata_penduduk.png",
      syarat: "Syarat yang diperlukan :",
      color: Colors.orange,
      destination: HomeScreen()),
  SuratBundles(
      id: 5,
      satu: "Surat Keterangan Lahir",
      dua: 'Kartu Keluarga',
      tiga: 'KTP',
      empat: " - ",
      lima: " -",
      title: "Surat Keterangan Umum Desa",
      description: "Adalah surat umum untuk keperluan penduduk/pribadi",
      imageSrc: "assets/png/umum.png",
      syarat: "Syarat yang diperlukan :",
      color: Colors.purple,
      destination: HomeScreen()),
  SuratBundles(
      id: 6,
      satu: "Surat Keterangan Lahir",
      dua: 'Akta Pendirian UKM',
      tiga: 'Kartu Keluarga & KTP',
      empat: "Surat Perjanjian Sewa",
      lima: "Bukti Tempat Usaha",
      title: "Surat Keterangan Domisili Usaha",
      description: "Adalah Surat untuk Pengurusan domisili Usaha",
      imageSrc: "assets/png/usaha.png",
      syarat: "Syarat yang diperlukan :",
      color: Color(0xFF2D365C),
      destination: HomeScreen()),
];

//CODINGAN INI UNTUK MENGATUK TULISAN2 DI SETIAP KARTU/CARD YANG ADA DI HALAMAN HOMESCREEN