import 'package:flutter/material.dart';
import 'package:meals/screens/categories_meals_screen.dart';
import 'package:meals/screens/categories_screen.dart';
import 'package:meals/screens/meal_detail_screen.dart';
import 'package:meals/utils/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        AppRoutes.HOME: (ctx) => const CategoriesScreen(),
        AppRoutes.CATEGORIES_MEALS: (ctx) => const CategoriesMealsScreen(),
        AppRoutes.MEAL_DETAIL: (ctx) => const MealDetailScreen()
      },
      onGenerateRoute: (settings) {},
      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (_) => const CategoriesScreen(),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Colors.deepOrangeAccent,
        fontFamily:  'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: TextStyle(fontFamily: 'RobotoCondensed', fontSize: 20,),
            ),
      ),
    );
  }
}
