import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

int i = 0;
int r = 0;
int g = 0;
int b = 0;
bool start = false;

String kaas = "MAD - André van der Lugt";

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
        backgroundColor: Color.fromARGB(255, r, g, b),
        appBar: AppBar(title: Text(kaas)),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            changeColor();
          },
          backgroundColor: Color.fromARGB(255, 255, 0, 0),
          child: const Icon(Icons.add),
        ),
      )),
    );
  }

  void changeColor() {
    return setState(() {
      switch (i) {
        case 0:
          r = 0;
          g = 255;
          b = 0;
          i = 1;
          break;
        case 1:
          r = 0;
          g = 0;
          b = 255;
          i = 2;
          break;
        case 2:
          r = 255;
          g = 0;
          b = 0;
          i = 0;
          break;
        default:
      }
    });
  }
}
