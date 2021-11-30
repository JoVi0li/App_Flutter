class MovieModel {
  String backdropPath;
  String originalTitle;
  int id;
  String overview;
  String releaseDate;

  MovieModel({
    required this.backdropPath,
    required this.originalTitle,
    required this.id,
    required this.overview,
    required this.releaseDate,
  });

  MovieModel.fromJson(dynamic json)
      : backdropPath = json["results"]["backdrop_path"],
        originalTitle = json["results"]["original_title"],
        id = json["results"]["id"],
        overview = json["results"]["overview"],
        releaseDate = json["results"]["release_date"];
}
