import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Container(
      alignment: Alignment.center,
      padding:
          EdgeInsets.only(left: 10.0, top: 20.0, right: 10.0, bottom: 20.0),
      color: Colors.grey,
      child: Column(
        children: <Widget>[
          Expanded(
              child: Text("test",
                  style: TextStyle(
                      decoration: TextDecoration.none, color: Colors.blue))),
          Expanded(
              child: Text("test2",
                  style: TextStyle(
                      decoration: TextDecoration.none, color: Colors.blue)))
        ],
      ),
    ));
  }
}
