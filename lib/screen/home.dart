import 'package:flutter/material.dart';

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

  Widget plcard(String lang, String img) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: InkWell(
        child: Material(
          borderRadius: BorderRadius.circular(20),
          elevation: 10,
          child: Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(100),
                    child: Container(
                      height: 100,
                      width: 100,
                      child: ClipOval(
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage(img),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                Text(
                  lang,
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

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
