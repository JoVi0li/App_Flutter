import 'package:app_trending_movies/interfaces/movie_interface.dart';
import 'package:app_trending_movies/models/movie_model.dart';
import 'package:dio/dio.dart';

class MovieController implements MovieInterface {
  @override
  Future<List<MovieModel>> fetchMovies() async {
    const stringEndpoint =
        "https://api.themoviedb.org/3/trending/movie/day?api_key=";
    const apiKey = "9709133a28fa7c20252619d3ee8b2f0b";

    var dio = Dio();

    final response = await dio.get(stringEndpoint + apiKey);

    final body = response.data;

    final movies = body.map((e) => MovieModel.fromJson(e));

    return movies;
  }
}
