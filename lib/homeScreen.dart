import 'package:flutter/material.dart';
import 'detailsScreen.dart';

class HomeScreen extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(title: Text('Welcome To Your Recipe Book')),
        body: Center(
            child: ElevatedButton(
            onPressed: () {
                Navigator.pushNamed(context, '/details');
            },
            child: Text('Go to Details Screen'),
            ),
        ),
        );
    }
}
