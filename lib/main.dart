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
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            scaffoldBackgroundColor: Colors.white10),
        debugShowCheckedModeBanner: false, // Remove the debug banner
        home: Scaffold(
            body: Row(children: <Widget>[
          Column(children: <Widget>[
            // Content of my Row
            //Item 1/4
            Expanded(
                child: Container(
              padding: const EdgeInsets.all(20),
              color: Colors.red,
              child: const Text("Item 1"),
            )),
            Expanded(
                child: Container(
              padding: const EdgeInsets.all(20),
              color: Colors.yellow,
              child: const Text("Item 2"),
            )),
            Expanded(
                child: Container(
              padding: const EdgeInsets.all(20),
              color: Colors.green,
              child: const Text("Item 2"),
            )),
            Expanded(
                child: Container(
                    padding: const EdgeInsets.all(20),
                    color: Colors.orange,
                    child: const Text("Uranus")))
          ]),
        ])));
  }
}
