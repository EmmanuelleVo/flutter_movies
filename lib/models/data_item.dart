import 'package:flutter/material.dart';
import 'package:movies/styles/constants.dart';

class MenuItemData {
  final String _text;
  final Icon _icon;
  final LinearGradient _gradient;

  MenuItemData(this._text, this._icon, this._gradient);

  LinearGradient get gradient => _gradient;

  Icon get icon => _icon;

  String get text => _text;
}

List<MenuItemData> menuItemsData = [
  MenuItemData("Home", const Icon(Icons.home), homeGradientButton),
  MenuItemData("Payment", const Icon(Icons.credit_card), homeGradientButton),
  MenuItemData("Settings", const Icon(Icons.settings), homeGradientButton),
];