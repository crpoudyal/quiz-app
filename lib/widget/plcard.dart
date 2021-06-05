import 'package:flutter/material.dart';

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
