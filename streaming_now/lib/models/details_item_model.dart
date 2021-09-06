class DetailsItemModel {
  final int id;
  final String title;
  final String backdropPath;
  final String overview;
  final List<String> genres;
  final List<String> directors;
  final List<String> actors;
  final int runtime;
  final String status;

  DetailsItemModel({
    required this.id,
    required this.title,
    required this.backdropPath,
    required this.overview,
    required this.genres,
    required this.directors,
    required this.actors,
    required this.runtime,
    required this.status,
  });
}
