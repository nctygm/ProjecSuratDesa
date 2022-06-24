import 'package:flutter/material.dart';
import 'package:projectsuratdesa/contstants.dart';
import 'package:projectsuratdesa/size_config.dart';

class Kategori extends StatefulWidget {
  const Kategori({Key? key}) : super(key: key);

  @override
  State<Kategori> createState() => _KategoriState();
}

class _KategoriState extends State<Kategori> {
  List<String> kategori = [
    "ALL",
    "Profil Desa",
    "Berita",
    "Pengaduan",
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: SizeConfig.defaultSize! * 2),
      child: SizedBox(
        height: SizeConfig.defaultSize! * 3.5,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: kategori.length,
            itemBuilder: (context, index) => buildKategiItem(index)),
      ),
    );
  }

  Widget buildKategiItem(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(left: SizeConfig.defaultSize! * 2),
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.defaultSize! * 2,
          vertical: SizeConfig.defaultSize! * 0.5,
        ),
        decoration: BoxDecoration(
          color: selectedIndex == index
              ? const Color(0xFFeFF3EE)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(
            SizeConfig.defaultSize! * 1.6,
          ),
        ),
        child: Text(
          kategori[index],
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: selectedIndex == index
                ? kPrimaryColor
                : const Color(0xFF84AB5C),
          ),
        ),
      ),
    );
  }
}
