import 'package:flutter/material.dart';
import 'package:movies/partials/avatar.dart';
import 'package:movies/partials/navbar/burger_menu.dart';
import 'package:movies/partials/search_bar.dart';
import 'package:movies/styles/constants.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultNavBarSpacer),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BurgerMenu(),
          SizedBox(
            width: defaultNavBarSpacer,
          ),
          SearchBar(),
          SizedBox(
            width: defaultNavBarSpacer,
          ),
          Icon(Icons.notifications),
          SizedBox(
            width: defaultNavBarSpacer,
          ),
          Avatar(),
        ],
        // TODO : FIRST SECTION
      ),
    );
  }
}
