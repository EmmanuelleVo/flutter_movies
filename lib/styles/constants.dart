import 'package:flutter/material.dart';

const mainBackgroundColor = const Color(0xFFeaeaea);
const mainTextColor = Color(0xFF254D60);

const double defaultWidth = 36;
const double defaultNavBarSpacer = 17;
const double horizontalSpace = 16;
const double verticalSpace = 26;

List<BoxShadow> boxShadowItem = [
  BoxShadow(
    color: Colors.black.withOpacity(0.16),
    spreadRadius: 1,
    blurRadius: 3,
    offset: Offset(2, 2),
  )
];
const BorderRadius borderRadiusItem = BorderRadius.all(Radius.circular(10));

const fontStyleMenuItem = TextStyle(fontFamily: 'main',fontWeight: FontWeight.w700, fontSize: 16);
const fontStyleLegend = TextStyle(fontFamily: 'main',fontSize: 14, color: Colors.grey);
const homeGradientButton = LinearGradient(
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
  colors: [
    Color(0xFF0093e9),
    Color(0xFF80DBC9),
  ],
);
