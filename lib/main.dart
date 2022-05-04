import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

int x = 65;
String kaas = "";

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
        backgroundColor: Color.fromARGB(255, 90, 165, x),
        appBar: AppBar(title: Text(kaas)),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              x = x + 10;
              kaas = kaas + "frans";
            });
          },
          backgroundColor: Colors.green,
          child: const Icon(Icons.add),
        ),
      )),
    );
  }
}
