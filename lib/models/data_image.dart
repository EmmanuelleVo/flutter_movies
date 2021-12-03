import 'package:flutter/material.dart';
import 'package:movies/styles/constants.dart';

class HomeImageData {
  final String _title;
  final String _date;
  final Image _image;

  //final LinearGradient _percentage;

  HomeImageData(this._title, this._date, this._image);

  //LinearGradient get gradient => _percentage;

  Image get image => _image;

  String get title => _title;

  String get date => _date;
}

List<HomeImageData> homeImageData = [
  HomeImageData(
      "Rebelle",
      "01/01/2022",
      const Image(
        image: AssetImage('assets/img/affiche2.jpg'),
        width: 200,
      )),
  HomeImageData(
      "Jumanji",
      "14/03/2022",
      const Image(
        image: AssetImage('assets/img/affiche1.jpg'),
        width: 200,
      )),
];
