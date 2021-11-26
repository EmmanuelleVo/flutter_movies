import 'package:flutter/material.dart';
import 'package:movies/models/data_item.dart';
import '../constants.dart';
import 'package:flutter/material.dart';


class MenuItem extends StatelessWidget {
  final MenuItemData _menuItemData;

  const MenuItem(this._menuItemData,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  gradient: _menuItemData.gradient,
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: IconButton(
                icon: _menuItemData.icon,
                color: Colors.white,
                onPressed: () {
                  print(_menuItemData.text);
                },
              ),
            ),
            const SizedBox(
              width: 12,
            ), // espace entre icon et text
            Text(_menuItemData.text,  style: fontStyleMenuItem),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
