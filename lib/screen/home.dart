import 'package:flutter/material.dart';
import 'package:quizapp/widget/plcard.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> img = [
    "assets/images/c.png",
    "assets/images/java.png",
    "assets/images/js.png",
    "assets/images/csharp.png",
    "assets/images/py.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz App"),
      ),
      body: ListView(
        children: [
          plcard("c", img[0]),
          plcard("Java", img[1]),
          plcard("Javascript", img[2]),
          plcard("C#", img[3]),
          plcard("Python", img[4]),
        ],
      ),
    );
  }
}
