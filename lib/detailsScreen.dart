import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(title: Text('Details Screen')),
        body: Center(
            child: Text('Welcome to Details Screen!',
                style: TextStyle(fontSize: 20)),
            ),
        );
    }
}
