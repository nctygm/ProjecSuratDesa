import 'package:flutter/material.dart';
import 'package:projectsuratdesa/models/SuratBundle.dart';
import 'package:projectsuratdesa/screens/home/components/kategori.dart';
import 'package:projectsuratdesa/screens/home/components/surat_bundle_cards.dart';
import 'package:projectsuratdesa/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          const Kategori(),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.defaultSize! * 0.4),
              child: GridView.builder(
                itemCount: suratBundles.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      SizeConfig.orientation == Orientation.landscape ? 2 : 1,
                  mainAxisSpacing: 10,
                  crossAxisSpacing:
                      SizeConfig.orientation == Orientation.landscape
                          ? SizeConfig.defaultSize! * 2
                          : 0,
                  childAspectRatio: 1.65,
                ),
                //Pijit pindah halaman
                itemBuilder: (context, index) => SuratBundleCard(
                  suratBundles: suratBundles[index],
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                suratBundles[index].destination));
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
//CODINGAN INI ADALAH PENGATURAN UKURAN UNTUK BODY DARI HALAMAN UTAMA ATAU HOMESCREE
//YANG MENAMPUNG KARTU/CARD (TERSAMBUNG KE FILE SuratBundle.dart)