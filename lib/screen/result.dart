import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  int marks;

  Result({Key? key, required this.marks}) : super(key: key);
  @override
  _ResultState createState() => _ResultState(marks);
}

class _ResultState extends State<Result> {
  int marks;
  _ResultState(this.marks);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Results"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: Material(
              child: Container(
                child: Column(
                  children: [
                    Material(
                      child: Container(
                        width: 300,
                        height: 300,
                        child: ClipRect(
                          child: Image(
                            image: AssetImage("assets/images/c.png"),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Text("Congratulation ! You Score $marks Marks"),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
              flex: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("continue"),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
