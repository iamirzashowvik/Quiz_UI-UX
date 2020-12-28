import 'package:flutter/material.dart';
import 'package:quiz/category.dart';
import 'package:quiz/loading_screen.dart';

void main() async {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: 'Category', routes: {
      'Category': (context) => LoadingScreen(),
      'gg': (context) => Category(),
    });
  }
}
