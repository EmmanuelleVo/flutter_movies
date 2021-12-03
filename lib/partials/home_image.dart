import 'package:flutter/material.dart';
import 'package:movies/models/data_image.dart';
import 'package:movies/styles/constants.dart';

/*class HomeImage extends StatefulWidget {
  final HomeImageData _homeImageData;

  const HomeImage(this._homeImageData, {Key? key}) : super(key: key);

  @override
  _HomeImageState createState() => _HomeImageState();
}

class _HomeImageState extends State<HomeImage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              //homeImageData.image;
              Image(image: AssetImage('assets/img/dog.jpg'),
                width: 200,
                height: 200,
              ),
            ],
          ),
          Row(
            children: [
              //Text('Movie Title', style: TextStyle(fontWeight: FontWeight.w200, fontSize: 18, fontFamily: 'main')),

            ],
          ),
          Row(
            children: [
              Text('01/01/2022', style: fontStyleLegend),
            ],
          )
        ],
          // TODO : add %
      ),
    );
  }
}

 */


class HomeImage extends StatelessWidget {
  final HomeImageData _homeImageData;

  const HomeImage(this._homeImageData,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              boxShadow: boxShadowItem,
              borderRadius: borderRadiusItem,
            ),
              child: _homeImageData.image
          ),
          Text(_homeImageData.title, style: TextStyle(fontWeight: FontWeight.w200, fontSize: 18, fontFamily: 'main')),
          Text(_homeImageData.date, style: fontStyleLegend),

          // TODO : add %
        ],
      ),
    );
  }
}

/*
*
* Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Popular Movies',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  fontFamily: 'main')),
          Text('This week',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  fontFamily: 'main')),
          Row(
            children: [
              HomeImage(homeImageData[0]),
              HomeImage(homeImageData[1]),
            ],
          ),
        ],
      ),
    );
* */

