import 'package:flutter/material.dart';
import 'package:projectsuratdesa/contstants.dart';
import 'package:projectsuratdesa/models/NavItem.dart';
import 'package:projectsuratdesa/size_config.dart';
import 'package:provider/provider.dart';

class mybottomNavBar extends StatelessWidget {
  const mybottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize!;
    return Consumer<NavItems>(
      builder: (context, NavItems, child) => Container(
        padding: EdgeInsets.symmetric(horizontal: defaultSize * 3),
        //height: 80,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              offset: Offset(0, -7),
              blurRadius: 30,
              color: Color(0xFF4B1A39).withOpacity(0.2)),
        ]),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              NavItems.items.length,
              (index) => buildconNavBarItem(
                icon: NavItems.items[index].icon,
                press: () {
                  NavItems.chaneNavIndex(index: index);
                  if (NavItems.items[index].destinationChecker()) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              NavItems.items[index].destination,
                        ));
                  }
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  IconButton buildconNavBarItem(
      {required String icon, press, bool isActive = false}) {
    return IconButton(
      icon: Image.asset(
        icon,
        height: 22, //WARNA BUTTON BAWAH
      ),
      onPressed: press,
    );
  }
}
//CODINGAN INI ADALAH UNTUK MENAPILKAN NAVIGASI YANG ADA DI BAWAH DARI HOMESCREEN
