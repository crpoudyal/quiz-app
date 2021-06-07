import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:quizapp/screen/quizpage.dart';

class GetJson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: DefaultAssetBundle.of(context).loadString("assets/data.json"),
      builder: (context, snapshot) {
        var data = json.decode(snapshot.data.toString());
        if (data == null) {
          return Scaffold(
            body: Center(
              child: Text("Data Not Found"),
            ),
          );
        } else {
          return QuizPage();
        }
      },
    );
  }
}
