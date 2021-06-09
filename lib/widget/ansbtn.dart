import 'package:flutter/material.dart';

Widget ansbtn() {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: ElevatedButton(
      onPressed: () => {},
      child: Text(
        "options",
        style: TextStyle(fontSize: 18),
        maxLines: 1,
      ),
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 72, vertical: 20),
          primary: Colors.blue,
          onPrimary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          )),
    ),
  );
}
