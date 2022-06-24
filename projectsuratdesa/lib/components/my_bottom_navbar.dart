import 'package:flutter/material.dart';
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
            children: <Widget>[buildconNavBarItem(NavItems)],
          ),
        ),
      ),
    );
  }

  IconButton buildconNavBarItem(NavItems NavItems) {
    return IconButton(
      icon: Image.asset(NavItems.items[0].icon),
      onPressed: () {},
    );
  }
}
