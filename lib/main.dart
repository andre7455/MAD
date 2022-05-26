import 'package:flutter/material.dart';

bool isSwitched = false;
var text = "";

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
            title: Text(text + "Home Screen"),
          ),
          body: Center(
              child: Column(
            children: [
              ElevatedButton(
                // Within the `Homescreen` widget
                onPressed: () {
                  if (isSwitched == false) {
                    text = "mag niet";
                  } else {
                    Navigator.pushNamed(context, '/second');
                  }
                },
                child: const Text('Flashing screen'),
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

class Settings extends StatefulWidget {
  const Settings({key});
  @override
  State<Settings> createState() => _SettingsState();
}

//statefull widget classes
class _SettingsState extends State<Settings> {
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
              const Text("safemode"),
              Switch(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
            ],
          )),
        ),
      )
    ]);
  }
}
