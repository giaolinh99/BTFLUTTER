import 'package:flutter/material.dart';
import 'package:lecture2/page1.dart';

import 'main.dart';

void main() {
  runApp(Page3());
}

class Page3 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Page3> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

          body: Center(
              child: Column(children: <Widget>[
                Container(
                  margin: EdgeInsets.all(25),
                  child: FlatButton(
                    child: Text(
                      'Button ',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    color: Colors.cyan,
                    textColor: Colors.black,
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(

                          builder: (context) =>MyApp()));
                    },
                  ),
                ),

              ]))),
    );
  }
}


