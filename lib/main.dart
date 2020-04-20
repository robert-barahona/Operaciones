import 'package:flutter/material.dart';
import 'package:operaciones/operation.dart';

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
  final _number1 = TextEditingController();
  final _number2 = TextEditingController();
  var _resultMessage = '';

  void itemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _resultMessage = '';
      calculateOperation();
    });
  }

  void calculateOperation() {
    if (_number1.text != '' && _number2.text != '') {
      var a = double.parse(_number1.text);
      var b = double.parse(_number2.text);
      Operation myOperation = new Operation(a, b);
      switch (_selectedIndex) {
        case 0:
          myOperation.add();
          break;
        case 1:
          myOperation.substract();
          break;
        case 2:
          myOperation.product();
          break;
        case 3:
          myOperation.divide();
          break;
      }

      setState(() {
        _resultMessage = 'The Result is: ' + myOperation.getResult().toString();
      });
    }
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
                InputNumber(txt: 'Número A', number: _number1),
                InputNumber(txt: 'Número B', number: _number2),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    onPressed: calculateOperation,
                    elevation: 8,
                    highlightElevation: 4,
                    splashColor: Colors.blue,
                    padding: EdgeInsets.all(15),
                    color: Colors.blueGrey,
                    highlightColor: Colors.cyan,
                    child: Text(
                      'CALCULAR',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 60),
                  child: Text(
                    _resultMessage,
                    style: TextStyle(fontSize: 25, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
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
