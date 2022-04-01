import 'package:calculator_app/main.dart';
import 'package:flutter/material.dart';

class Multiply extends StatefulWidget {
  const Multiply({Key? key}) : super(key: key);

  @override
  State<Multiply> createState() => _MultiplyState();
}

class _MultiplyState extends State<Multiply> {
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  int _sum = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("MULTIPLY"),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(12),
            child: Column(
              children: [
                SizedBox(
                  height: 16,
                ),
                TextField(
                  controller: num1,
                  decoration: InputDecoration(
                      labelText: "ENTER 1ST NUMBER",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12))),
                ),
                SizedBox(
                  height: 12,
                ),
                TextField(
                  controller: num2,
                  decoration: InputDecoration(
                      labelText: "ENTER 2ND NUMBER",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12))),
                ),
                SizedBox(
                  height: 12,
                ),
                RaisedButton(
                  color: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  onPressed: () {
                    var Getnum1 = int.parse(num1.text);
                    var Getnum2 = int.parse(num2.text);

                    setState(() {
                      _sum = Getnum1 * Getnum2;
                    });
                  },
                  child: Text(
                    "MULTIPLY",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
                Text(
                  "RESULT",
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  _sum.toString(),
                  style: TextStyle(fontSize: 25),
                ),
                RaisedButton(
                  color: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CalculatorApp()));
                  },
                  child: Text(
                    "RETURN TO HOMEPAGE",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
