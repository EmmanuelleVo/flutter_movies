class Movie {
  final int movieId;
  final String title;
  final String backdropPath;
  final String posterPath;
  final String originalTitle;
  final String overview;
  final double popularity;
  final double voteAverage;
  final String releaseDate;

  Movie(
      {this.movieId = 0,
        this.title = "",
        this.backdropPath = "",
        this.posterPath = "",
        this.originalTitle = "",
        this.overview = "",
        this.popularity = 0,
        this.voteAverage = 0,
        this.releaseDate = ""});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      movieId: json['id'],
      title: json['title'],
      backdropPath: json['backdrop_path'],
      posterPath: json['poster_path'],
      originalTitle: json['original_title'],
      overview: json['overview'],
      popularity: json['popularity'].toDouble(),
      voteAverage: json['vote_average'].toDouble(),
      releaseDate: json['release_date'],
    );
  }

  @override
  String toString() {
    return 'Movie{movieId: $movieId, title: $title, backdropPath: $backdropPath, posterPath: $posterPath, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, voteAverage: $voteAverage, releaseDate: $releaseDate}';
  }
}