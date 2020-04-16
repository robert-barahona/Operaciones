import 'package:flutter/material.dart';

class InputNumber extends StatelessWidget {
  final txt;
  var number = TextEditingController();

  InputNumber({@required this.txt, @required this.number});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
      child: TextField(
        controller: number,
        style: TextStyle(fontSize: 25, color: Colors.white),
        textAlign: TextAlign.center,
        cursorColor: Colors.white,
        autofocus: false,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            borderSide: BorderSide(color: Colors.cyan),
          ),
          hintText: txt,
          hintStyle: TextStyle(color: Colors.grey),
          labelStyle: TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
    );
  }
}
