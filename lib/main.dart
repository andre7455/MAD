import 'package:flutter/material.dart';

void main() {
  runApp(notMyApp());
}

class notMyApp extends StatefulWidget {
  const notMyApp({Key? key}) : super(key: key);

  @override
  State<notMyApp> createState() => _notMyAppState();
}

class _notMyAppState extends State<notMyApp> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialApp(
          home: Scaffold(
        backgroundColor: Color.fromARGB(255, 56, 128, 196),
        appBar: AppBar(
            title: Text("Home"),
            backgroundColor: Color.fromARGB(255, 0, 0, 255),
            elevation: 0.0),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 16, 16, 221),
          onPressed: () {},
          child: const Icon(Icons.cottage),
        ),
      )),
    );
  }
}

class Secondscreen extends StatefulWidget {
  const Secondscreen({Key? key}) : super(key: key);

  @override
  State<Secondscreen> createState() => _SecondscreenState();
}

class _SecondscreenState extends State<Secondscreen> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
