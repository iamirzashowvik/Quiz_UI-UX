import 'package:flutter/material.dart';
import 'package:quiz/category.dart';

class LoadingScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoadingScreenState();
  }
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Category()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFF3859),
      body: Center(
        child: Container(
          height: 500,
          width: 300,
          child: Center(
            child: Text(
              'Quizz',
              style: TextStyle(
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.bold,
                color: Color(0xfffefefe),
                fontSize: 50,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
