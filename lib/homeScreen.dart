import 'package:flutter/material.dart';
import 'detailsScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key}); 

  static const List<Map<String, dynamic>> dishes = [
    {
      'name': 'Pancakes',
      'ingredients': ['Flour', 'Eggs', 'Milk', 'Baking Powder', 'Sugar'],
      'steps': ['Mix ingredients', 'Heat Pan', 'Pour Batter', 'Flip when bubbly', 'Plate and serve'],
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Welcome To Your Recipe Book')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: dishes.map((dish) {
          return ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                    name: dish['name'],
                    ingredients: dish['ingredients'],
                    steps: dish['steps'],
                  ),
                ),
              );
            },
            child: Text(dish['name']),
          );
        }).toList(),
      ),
    );
  }
}
