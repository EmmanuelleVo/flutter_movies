import 'package:flutter/material.dart';
import 'package:movies/models/movie.dart';
import 'package:movies/styles/constants.dart';

class MovieCard extends StatelessWidget {
  final Movie _movie;
  final bool _isLast;

  const MovieCard(this._movie, this._isLast, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: defaultNavBarSpacer, right: _isLast ? defaultNavBarSpacer : 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: borderRadiusItem,
                boxShadow: boxShadowItem,
              ),
              child: Image.network(
                'https://image.tmdb.org/t/p/w154/${_movie.posterPath}',
                height: 231,
                width: 154,
              )),
        ],
      ),
    );
  }
}
