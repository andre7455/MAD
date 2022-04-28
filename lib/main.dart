import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Mobile Application Development'),
      )),
    );
  }
}
