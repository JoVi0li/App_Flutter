import 'package:app_trending_movies/controllers/movie_controller.dart';
import 'package:app_trending_movies/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  // MovieController movieController = MovieController();

  // movieController.fetchMovies();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeView(),
    );
  }
}
