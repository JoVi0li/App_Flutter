import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';

class MealDetailScreen extends StatelessWidget {
  const MealDetailScreen({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Meal;

    return Scaffold(
      appBar: AppBar(
        title: Text(arguments.title),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            child: Image.network(
              arguments.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Ingredientes',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Container(
            width: 300,
            height: 200,
            padding: const EdgeInsets.all(10.0),
            margin: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey),
              borderRadius:  BorderRadius.circular(10.0)
            ),
            child: ListView.builder(
              itemCount: arguments.ingredients.length,
              itemBuilder: (ctx, index) => Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 10,
                  ),
                  child: Text(arguments.ingredients[index]),
                ),
                color: Theme.of(context).accentColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
