import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    int i = 0;
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 50, 106, 216),
        title: const Text("green"),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [Text('text1'), Text('kaas')]),
    ));
  }
}
