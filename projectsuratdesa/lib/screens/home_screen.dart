import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projectsuratdesa/components/my_bottom_navbar.dart';
import 'package:projectsuratdesa/screens/home/components/body.dart';
import 'package:projectsuratdesa/size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
      bottomNavigationBar: const mybottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: IconButton(
        icon: SvgPicture.asset('assets/images/menubar.svg'),
        onPressed: () {},
      ),
      centerTitle: true,
      title: Image.asset('assets/png/headersurat.png'),
      actions: <Widget>[
        IconButton(
            icon: SvgPicture.asset('assets/images/cari.svg'), onPressed: () {}),
        SizedBox(width: SizeConfig.defaultSize! * 0.5),
      ],
    );
  }
}
