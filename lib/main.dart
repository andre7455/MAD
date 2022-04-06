import 'package:flutter/material.dart';

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
            title: const Text("green"),
          ),
          body: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Icon(Icons.abc),
              Icon(Icons.access_alarm),
              Icon(Icons.add_to_home_screen)
            ],
          )),
    );
  }
}
