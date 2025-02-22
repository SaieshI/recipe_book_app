import 'package:flutter/material.dart';
import 'detailsScreen.dart';

class HomeScreen extends StatelessWidget {
    const HomeScreen({super.key}); 

    static const List<Map<String, dynamic>> dishes = [
    {
        'name': 'Pancakes',
        'ingredients': ['1 Flour', '1 Eggs', '1 Cup Milk', '1 Tablespoon Baking Powder', '2 Tablespoons Sugar', '1/2 Teaspoon Salt', '2 Tablespoons Melted Butter'],
        'steps': ['1. Mix flour, sugar, baking powder and salt.', '2. Whisk milk, egg, and melted butter.', '3. Combine wet and dry together until mixed.', '4. Pour batter on pan and flip when bubbly.', '5. Flip and cook other side until cooked, then plate.'],
    },
    {
        'name': 'Chicken Tacos',
        'ingredients': ['2 Cups Shredded Chicken', '1 Teaspoon Taco Seasoning', '8 Taco Shells', '1 Cup Lettuce', '1 Cup Diced Tomatoes', '1/2 Cup Shredded Cheese', 'Salsa'],
        'steps': ['1. Heat chicken with taco seasoning in a pan.', '2. Fill taco shells with chicken.', '3. Top with lettuce, tomatoes, and salsa (optional).', '4. Serve'],
    },
    {
        'name': 'Vegetable Curry',
        'ingredients': ['2 Cups Mixed Veggies', '1 Chopped Onion', '2 Cloves Minced Garlic', '1 Tablespoon Curry Powder', '1 Can Coconut Milk', 'Salt and Pepper'],
        'steps': ['1. In a pop, saute onions and garlic until its fragrant.', '2. Add mixed veggies and curry powder, cook for few minutes.', '3. Pour in coconut milk and simmer until veggies are soft.', '4. Season with salt and pepper and serve.'],
    },
    {
        'name': 'Veggie Omelette',
        'ingredients': ['3 Eggs', '1/4 Cup Milk', '1/2 Cup Diced Bell Peppers', '1/4 Cup Chopped Onions', '1/4 Cup Shredded Cheese', 'Salt and Pepper'],
        'steps': ['1. Whisk eggs, milk, salt, and pepper.', '2. Pour onto pan.', '3. Add bell peppers, onions, and cook until it sets.', '4. Sprinkle cheese on top fold and serve.'],
    },
    {
        'name': 'Fruit Smoothie',
        'ingredients': ['1 Banana', '1 Cup Forzen Berries', '1/2 Cup Yogurt', '1/2 Cup Milk', '1 Tablespoon Honey'],
        'steps': ['1. Combine all ingredients in a blender.', '2. Blend until smooth.', '3. Pour into glass.'],
    },
    {
      'name': 'Lemon Garlic Shrimp',
      'ingredients': ['1lb Shrimp, Peeled and Deveined', '4 Cloves Minced Garlic', '1/4 Cup Lemon Juice', '2 Tablespoons Olive Oil', 'Salt and Pepper', 'Parsley'],
      'steps': ['1. Heat olive oil in pan, and add garlic and saute until fragrant.', '2. Add shrimp, lemon juice, salt and pepper. Cook until shrimp is pink.', '3. Garnish with parsley.'],
    },
    {
        'name': 'Pesto Pasta',
        'ingredients': ['8oz of Pasta', '1 Cup of Basil Pesto', '1/4 Cup of Parmesan Cheese', 'Halved Cherry Tomatoes', 'Toasted Pine Nuts'],
        'steps': ['1. Cook and drain pasta.', '2. In a bowl mix pasta with pesto and parmesan.', '3. Serve topped with cherry tomatoes and pine nuts.'],
    },
    {
        'name': 'Egge Fried Rice',
        'ingredients': ['2 Cups Cooked Rice', '2 Beaten Eggs', '1 Cup Mixed Veggies', '2 Tablespoons Soy Sauce', '2 Green Onions', '1 Tablespoon Oil'],
        'steps': ['1. In pan, heat oil and scramble eggs and set aside.', '2. In same pan, added mixed veggies and stir-fry for few minutes.', '3. Add cooked rice, soy sauce, and scrambled eggs. Mix well and add mix green onions before serving.'],
    },
    {
        'name': 'Grilled Cheese Sandwich',
        'ingredients': ['4 Slices of Bread', '4 Slices of Cheese', '2 Tablespoon Butter'],
        'steps': ['1. Butter one side of bread.', '2. Place cheese between two slices of bread, buttered side out.', '3. Grill in pan over medium heat until golden brown on both sides and cheese has melted.'],
    },
    {
        'name': 'Guacamole',
        'ingredients': ['2 Ripe Mashed Avacados', '1 Small Chopped Onion', '1 Diced Tomato', '1 Lime Juiced', 'Salt', 'Tortilla Chips'],
        'steps': ['1. In a bowl, mash avacados.', '2. Add chopped onions, diced tomatoes, lime juice, and salt.', '3. Mix until combined.', '4. Serve with tortilla chips.'],
    },
  ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(title: const Text('Welcome To Your Recipe Book')),
        body: ListView(
            padding: const EdgeInsets.all(16),
            children: dishes.map((dish) {
            return Column(
                children: [
                ElevatedButton(
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
                ),
                const SizedBox(height: 10), // Add space between buttons
            ],
            );
        }).toList(),
      ),
    );
  }
}
