import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:movies/models/data_image.dart';
import 'package:movies/models/movie.dart';
import 'package:movies/partials/home_image.dart';
import 'package:http/http.dart' as http;
import 'package:movies/partials/movie_card.dart';
import 'package:movies/styles/constants.dart';

class MovieSlider extends StatefulWidget {
  const MovieSlider({Key? key}) : super(key: key);

  @override
  _MovieSliderState createState() => _MovieSliderState();
}

class _MovieSliderState extends State<MovieSlider> {
  final List<Movie> _movies = [];

  @override
  void initState() {
    // aller chercher des données
    super.initState(); // super : référence à la classe parent
    getMoviesFromApi();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 327,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(8),
          itemCount: _movies.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: MovieCard(_movies[index], index==_movies.length-1),
            );
          }
      ),
    );;
  }

  void getMoviesFromApi() {
    http.get(Uri.parse( // si ok -> then, si non -> onError
        'https://api.themoviedb.org/3/discover/movie?sort_by=popularity.desc&api_key=4cfef0791a27780cf2880e39aebbe725&language=fr-fr'))
        .then((response) {
      if (response.statusCode == 200) {
        dynamic datas = jsonDecode(response
            .body); //dynamic : type qui accepte qu'on lui donne des valeurs plus tard
        for (var data in datas['results']) {
          setState(() {
            _movies.add(Movie.fromJson(data));
          });
        }
        print(_movies);
      } else {
        throw Exception(
            'Oops ! ${response.statusCode} - ${response.reasonPhrase}');
      }
    })
        .onError((error, stackTrace) {
      throw Exception('Oops ! ${error.toString()}');

      });
  }
}
