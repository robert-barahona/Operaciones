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
  var _selectedIndex = 0;
  static const TextStyle _textStyle =
      TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold);
  static const List<Widget> _operaciones = <Widget>[
    Text('SUMA', style: _textStyle),
    Text('RESTA', style: _textStyle),
    Text('PRODUCTO', style: _textStyle),
    Text('DIVISIÓN', style: _textStyle),
  ];

  void itemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color.fromARGB(255, 44, 62, 80),
          body: Center(
            child: _operaciones[_selectedIndex],
          ),
          bottomNavigationBar: BottomNavigationBar(
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
                title: Text('Producto'),
              ),
              BottomNavigationBarItem(
                icon: Icon(MyCustomIcons.divide),
                title: Text('División'),
              ),
            ],
            //Here we have the BottomBar settings
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color.fromARGB(255, 23, 32, 42),
            unselectedItemColor: Colors.white,
            selectedItemColor: Colors.cyan,
            onTap: itemTapped,
          )),
    );
  }
}
