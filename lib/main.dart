import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Myapp());
}

// no idea what this part is but okey
class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);
  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // widget 1 staat hier
      home: AppBar(
        backgroundColor: Color.fromARGB(255, 209, 50, 50),
        title: Text('KAAS'),
      )
    );
  }
}
