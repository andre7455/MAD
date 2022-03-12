import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 32, 102, 34),
          title: const Text("helloWorld"),
        ),
        body: Container(
          child: const Text("hello again"),
        ),
      ),
    );
  }
}
