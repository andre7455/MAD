import 'dart:html';

import 'package:flutter/material.dart';

bool isSwitched = false;

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Homescreen(),
        '/second': (context) => const Flashing(),
        '/thirt': (context) => const Settings(),
      },
    ),
  );
}

class Homescreen extends StatelessWidget {
  const Homescreen({key});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 667,
        width: 500,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Home Screen'),
          ),
          body: Center(
              child: Column(
            children: [
              ElevatedButton(
                // Within the `Homescreen` widget
                onPressed: () {
                  Navigator.pushNamed(context, '/second');
                },
                child: const Text('Launch screen'),
              ),
              FloatingActionButton(
                  child: const Icon(Icons.settings),
                  onPressed: () {
                    Navigator.pushNamed(context, '/thirt');
                  })
            ],
          )),
        ),
      )
    ]);
  }
}

class Flashing extends StatelessWidget {
  const Flashing({key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => Navigator.pop(context),
      child: Scaffold(
          body: Image.network(
        "https://j.gifs.com/vMO2wL.gif",
        fit: BoxFit.cover,
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,
      )),
    );
  }
}

class Settings extends StatelessWidget {
  const Settings({key});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 667,
        width: 500,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Settings'),
          ),
          body: Center(
              child: Column(
            children: [
              FloatingActionButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: const Icon(Icons.settings)),
              const Text("data"),
              Switch(
                value: isSwitched,
                onChanged: (value) {
                  setState(value);
                },
              ),
            ],
          )),
        ),
      )
    ]);
  }

  setState(value) {
    isSwitched = value;
  }
}
