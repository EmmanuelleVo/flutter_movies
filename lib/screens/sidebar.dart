import 'package:flutter/material.dart';
import 'package:movies/models/data_item.dart';
import 'package:movies/partials/avatar.dart';
import 'package:movies/partials/menu_item.dart';

import '../styles/constants.dart';

class SideBarScreen extends StatefulWidget {
  const SideBarScreen({Key? key}) : super(key: key);

  @override
  _SideBarScreenState createState() => _SideBarScreenState();
}

class _SideBarScreenState extends State<SideBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(34))),
      width: MediaQuery.of(context).size.width * 0.7,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 34),
        child: SafeArea(
          child: Column(
            children: [
              Column(
                children: [
                  Row(children: [
                    Avatar(),
                    const SizedBox(width: horizontalSpace),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Ugly Dog'),
                        Text('By Maide Akdede', style: fontStyleLegend),
                      ],
                    )
                  ]
                  ),
                  SizedBox(height: verticalSpace*2)
                ],
              ),

              //MenuItem(color: Colors.amberAccent, text: 'Search', icon: Icons.search),
              MenuItem(menuItemsData[0]),
              MenuItem(menuItemsData[1]),
              MenuItem(menuItemsData[2]),
              Spacer(),
              Row(
                children: const [
                  Icon(Icons.logout),
                  SizedBox(width: 5),
                  Text('Log Out', style: fontStyleLegend),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Faire plusieurs buttons, à partir de Row le dupliquer (settings, payment,...)
// En bas, button pour se déconnecter (Sized (occupe tout l'espace restant))

/*class MenuItem extends StatelessWidget{

  //const MenuItem({required this.text, required this.icon, required this.color});
  const MenuItem(this._text, this._icon, this._color, {Key? key}) : super(key: key);

  final String text;
  final IconData icon;
  final LinearGradient color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
              gradient: color,
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: IconButton(
            icon: Icon(icon),
            color: Colors.white,
            onPressed: () {
              print(text);
            },
          ),
        ),
        const SizedBox(
          width: 12,
        ), // espace entre icon et text
        Text(text,  style: fontStyleMenuItem),
      ],
    );
  }
}*/
