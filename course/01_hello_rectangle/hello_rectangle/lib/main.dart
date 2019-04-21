import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello Rectangle",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello Ractangle"),
        ),
        body: Center(
          child: Container(
            height: 110.0,
            width: 150.0,
            color: Colors.greenAccent,
            child: Center(
              child: Text(
                "Hello World!",
                style: TextStyle(fontSize: 30.0),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
