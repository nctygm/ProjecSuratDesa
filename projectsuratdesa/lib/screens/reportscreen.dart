import 'package:flutter/material.dart';
import 'package:projectsuratdesa/components/my_bottom_navbar.dart';
import 'package:projectsuratdesa/contstants.dart';

class reportScreen extends StatelessWidget {
  const reportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        title: Text("Daftar Pengajuan Surat"),
      ),
      bottomNavigationBar: mybottomNavBar(),
    );
  }
}
