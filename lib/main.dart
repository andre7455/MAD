import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

int i = 0;
int r = 0;
int g = 0;
int b = 0;
int opacityAppBar = 255;
bool start = false;

String title = "MAD - André van der Lugt";

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
        appBar: AppBar(
            title: Text(title),
            backgroundColor: Color.fromARGB(opacityAppBar, 0, 0, 255),
            elevation: 0.0),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromARGB(opacityAppBar, 0, 0, 255),
          onPressed: () {
            changeColor();
          },
          child: const Icon(Icons.add),
        ),
      )),
    );
  }

  void changeColor() {
    return setState(() {
      title = "";
      opacityAppBar = 0;
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
