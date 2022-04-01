import 'package:calculator_app/SCREENS/ADD.dart';
import 'package:calculator_app/SCREENS/DIVIDE.dart';
import 'package:calculator_app/SCREENS/MULTIPLY.dart';
import 'package:calculator_app/SCREENS/SUBTRACT.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(150),
      child: Column(
        children: [
          RaisedButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            color: Colors.blueAccent,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Adding()));
            },
            child: Text(
              "ADD",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
          RaisedButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            color: Colors.blueAccent,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Subtraction()));
            },
            child: Text(
              "SUBTRACT",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
          RaisedButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            color: Colors.blueAccent,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Multiply()));
            },
            child: Text(
              "MULTIPLY",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
          RaisedButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            color: Colors.blueAccent,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Divide()));
            },
            child: Text(
              "DIVIDE",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
