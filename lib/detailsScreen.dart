import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String name;
  final List<String> ingredients;
  final List<String> steps;

  const DetailsScreen({
    super.key,
    required this.name,
    required this.ingredients,
    required this.steps,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Text('Ingredients:', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ...ingredients.map((ingredient) => Text(ingredient)).toList(),
            const SizedBox(height: 20),
            Text('Steps:', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ...steps.map((step) => Text(step)).toList(),
          ],
        ),
      ),
    );
  }
}
