import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  var data;

  QuizPage({Key? key, @required this.data}) : super(key: key);
  @override
  _QuizPageState createState() => _QuizPageState(data);
}

class _QuizPageState extends State<QuizPage> {
  var data;
  _QuizPageState(this.data);

  Map<String, Color> btnclr = {
    "a": Colors.blue,
    "b": Colors.blue,
    "c": Colors.blue,
    "d": Colors.blue,
  };
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
  }

  Widget ansbtn(String d) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ElevatedButton(
        onPressed: () => checkans(d),
        child: Text(
          data[1]["1"][d],
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
                data[0]["1"],
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
                "30",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
