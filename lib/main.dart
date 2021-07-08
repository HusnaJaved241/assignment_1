import 'package:assignment_1/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  String textStatement = "This is the text before button is clicked";
  void changeText() {
    setState(() {
      textStatement = "This is text after clicking button";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: 'Flutter Tutorial',
    theme: ThemeData(
      primarySwatch: Colors.pink,
    ),
      home: Scaffold(
        appBar: AppBar(
          // ignore: prefer_const_constructors
          title: Center(
          child: Text('Assignment 1',  
          style:  TextStyle(
          fontFamily: 'Satisfy',
          fontWeight: FontWeight.bold,
          fontSize: 26,
          ),
          ),
          ) ,
        ),
        body: textButton(textStatement, changeText)
      ),
    );
  }
}
