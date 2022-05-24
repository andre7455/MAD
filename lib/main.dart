import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          // Within the `Homescreen` widget
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
          child: const Text('Launch screen'),
        ),
      ),
    );
  }
}

class Flashing extends StatelessWidget {
  const Flashing({key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Image.network(
        "https://j.gifs.com/vMO2wL.gif",
        fit: BoxFit.cover,
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,
      ),
    );
  }
}

class Settings extends StatelessWidget {
  const Settings({key});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      AppBar(title: Text("Settings")),
      Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Go back you cunting ass beggar!'),
          ),
        ),
      )
    ]));
  }
}
