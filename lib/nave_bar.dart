import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NaveBar extends StatelessWidget {
  const NaveBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingNavbar(
      onTap: (int val) {
        //returns tab id which is user tapped
      },
      currentIndex: 0,
      items: [
        FloatingNavbarItem(icon: FontAwesomeIcons.home, title: 'EXPLORER'),
        FloatingNavbarItem(
            icon: FontAwesomeIcons.search, title: 'RECHERCHER'),
        FloatingNavbarItem(
          icon: FontAwesomeIcons.ticketAlt,
          title: 'PASS D\'ACCES',
        ),
        FloatingNavbarItem(icon: FontAwesomeIcons.userAlt, title: 'PROFILE'),
      ],
      fontSize: 9,
      iconSize: 14,
      backgroundColor: Colors.black87,
      selectedBackgroundColor: null,
      selectedItemColor: Colors.white,
      margin: EdgeInsets.only(bottom: 15, left: 9, right: 9),
    );
  }
}
