import 'package:flutter/material.dart';
import 'package:quiz/question.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets.init(
      context,
      height: 1920, // Optional
      width: 1080, // Optional
      allowFontScaling: true, // Optional
    );
    return ResponsiveWidgets.builder(
      height: 1920, // Optional
      width: 1080, // Optional
      allowFontScaling: true,
      child: Scaffold(
        backgroundColor: Color(0xffFF3859),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Text(
                  'Subject Type',
                  style: TextStyle(
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w900,
                    color: Color(0xfffefefe),
                    fontSize: 50,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  'Please Choose your subject',
                  style: TextStyle(
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w900,
                    color: Color(0xfffefefe),
                    fontSize: 25,
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CountDownTimer()),
                      );
                    },
                    child: CategoryX(
                        'Physics', 'assets/images-removebg-preview.png'),
                  )),
                  Expanded(
                      child: CategoryX('Math',
                          'assets/maths_icon_varwhq-removebg-preview.png'))
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: CategoryX(
                          'Chemistry', 'assets/images-removebg-pre.png')),
                  Expanded(
                      child: CategoryX('Biology',
                          'assets/scope-of-biology-removebg-preview.png'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryX extends StatelessWidget {
  final String name;
  final String iimage;
  CategoryX(this.name, this.iimage);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: Container(
        height: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          //  color: Color(0xfffec1ce),
          color: Color(0xfffefefe),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextResponsive(
                name,
                style: TextStyle(
                    color: Color(0xffFF3859),
                    fontSize: 150.h,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(iimage),
              )
            ],
          ),
        ),
      ),
    );
  }
}
