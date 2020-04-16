import 'package:flutter/material.dart';

import './my_custom_icons_icons.dart';
import './input_number.dart';

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
      TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _title = <Widget>[
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
          body: Container(
            padding: EdgeInsets.fromLTRB(80, 100, 80, 10),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 50),
                  child: _title[_selectedIndex],
                ),
                InputNumber(txt: 'Número A'),
                InputNumber(txt: 'Número B'),
              ],
            ),
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
            currentIndex: _selectedIndex,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color.fromARGB(255, 23, 32, 42),
            unselectedItemColor: Colors.white,
            selectedItemColor: Colors.cyan,
            onTap: itemTapped,
          )),
    );
  }
}
