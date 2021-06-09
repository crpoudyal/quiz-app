import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              child: Text("hello this is questions"),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              child: Text("hello this is questions"),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Text("hello this is questions"),
            ),
          ),
        ],
      ),
    );
  }
}
