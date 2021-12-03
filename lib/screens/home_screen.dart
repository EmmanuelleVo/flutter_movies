import 'package:flutter/material.dart';
import 'package:movies/partials/navbar/nav_bar.dart';
import 'package:movies/sliders/movie_slider.dart';
import 'package:movies/styles/constants.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  _MyHomeScreenState createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        NavBar(),
        MovieSlider(),
      ],
    ));
  }
}
