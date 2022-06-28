import 'package:flutter/material.dart';
import 'package:projectsuratdesa/screens/home_screen.dart';

class NavItem {
  final int id;
  final String icon;
  final Widget destination;

  NavItem({required this.id, required this.icon, required this.destination});

// If there is no destination then it help us
  bool destinationChecker() {
    if (destination != null) {
      return true;
    }
    return false;
  }
}

class NavItems extends ChangeNotifier {
  int selectedIndex = 0;
  List<NavItem> items = [
    NavItem(
        id: 1,
        icon: "assets/icons/personicon.png",
        destination: const HomeScreen()),
    NavItem(
        id: 2,
        icon: "assets/icons/personicon.png",
        destination: const HomeScreen()),
    NavItem(
        id: 3,
        icon: "assets/icons/personicon.png",
        destination: const HomeScreen()),
    NavItem(
        id: 4,
        icon: "assets/icons/personicon.png",
        destination: const HomeScreen()),
  ];
}
//INI ADALAH CODINGAN UNTUK MENGATUR GAMBAR PADA NAVIGASI DI BAWAH PADA HALAMAN HOMESCREEN
