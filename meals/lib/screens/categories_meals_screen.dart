import 'package:flutter/material.dart';
import 'package:meals/components/meal_item.dart';
import 'package:meals/models/meal.dart';
import '../models/category.dart';

class CategoriesMealsScreen extends StatelessWidget {
  final List<Meal> meals;
  const CategoriesMealsScreen({
    Key? key, required this.meals,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categories = ModalRoute.of(context)!.settings.arguments as Category;
    final categoriesMeals = meals
        .where((element) => element.categories.contains(categories.id))
        .toList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: categories.color,
        title: Text(categories.title),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: categoriesMeals.length,
        itemBuilder: (ctx, index) => MealItem(
          meal: categoriesMeals[index],
        ),
      ),
    );
  }
}
