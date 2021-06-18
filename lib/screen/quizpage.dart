import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quizapp/screen/result.dart';

class QuizPage extends StatefulWidget {
  var data;

  QuizPage({Key? key, @required this.data}) : super(key: key);
  @override
  _QuizPageState createState() => _QuizPageState(data);
}

class _QuizPageState extends State<QuizPage> {
  var data;
  _QuizPageState(this.data);
  int i = 1;
  int timer = 30;
  String stimer = "30";

  Map<String, Color> btnclr = {
    "a": Colors.blue,
    "b": Colors.blue,
    "c": Colors.blue,
    "d": Colors.blue,
  };
  @override
  void initState() {
    starttimer();
    super.initState();
  }

  void starttimer() async {
    const onesec = Duration(seconds: 1);
    Timer.periodic(onesec, (Timer t) {
      setState(() {
        if (timer < 1) {
          t.cancel();
          nxtque();
        } else if (cancletimer == true) {
          t.cancel();
        } else {
          timer = timer - 1;
        }
        stimer = timer.toString();
      });
    });
  }

  bool cancletimer = false;
  int marks = 0;
  Color clrtoshow = Colors.blue;
  Color correct = Colors.green;
  Color wrong = Colors.red;

  void checkans(String k) {
    if (data[2]["1"] == data[1]["1"][k]) {
      marks = marks + 10;
      clrtoshow = correct;
    } else {
      clrtoshow = wrong;
    }
    setState(() {
      btnclr[k] = clrtoshow;
    });
    Timer(Duration(seconds: 1), nxtque);
  }

  void nxtque() {
    cancletimer = false;
    timer = 30;
    setState(() {
      if (i < 5) {
        i++;
      } else {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => Result(marks: marks),
        ));
      }
      btnclr["a"] = Colors.blue;
      btnclr["b"] = Colors.blue;
      btnclr["c"] = Colors.blue;
      btnclr["d"] = Colors.blue;
    });
    starttimer();
  }

  Widget ansbtn(String d) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ElevatedButton(
        onPressed: () => checkans(d),
        child: Text(
          data[1][i.toString()][d],
          style: TextStyle(fontSize: 18),
          maxLines: 1,
        ),
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 72, vertical: 20),
            primary: btnclr[d],
            onPrimary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.center,
              child: Text(
                data[0][i.toString()],
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ansbtn('a'),
                ansbtn('b'),
                ansbtn('c'),
                ansbtn('d'),
              ],
            )),
          ),
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.topCenter,
              child: Text(
                stimer,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
