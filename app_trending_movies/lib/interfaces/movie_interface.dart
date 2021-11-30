import 'package:app_trending_movies/models/movie_model.dart';

abstract class MovieInterface{
  Future<List<MovieModel>> fetchMovies ();

}