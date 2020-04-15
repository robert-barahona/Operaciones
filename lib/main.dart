import 'package:flutter/material.dart';
import 'package:operaciones/my_custom_icons_icons.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color.fromARGB(255, 44, 62, 80),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Color.fromARGB(255, 23, 32, 42),
            unselectedItemColor: Colors.white,
            selectedItemColor: Colors.cyan,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(MyCustomIcons.plus),
                title: Text('Suma'),
              ),
              BottomNavigationBarItem(
                icon: Icon(MyCustomIcons.minus),
                title: Text('Resta'),
              ),
              BottomNavigationBarItem(
                icon: Icon(MyCustomIcons.multiplication),
                title: Text('Multiplicación'),
              )
            ],
          )),
    );
  }
}
