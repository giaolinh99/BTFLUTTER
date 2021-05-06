import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:lecture2/models/sinhvien.dart';
import 'package:lecture2/page1.dart';
import 'package:lecture2/page2.dart';
import 'package:lecture2/page3.dart';
import 'package:lecture2/page_4.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int selectedIndex = 0;
  static TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static List<Widget> _widgetOptions = <Widget>[

    HomePage(),
    Page2(),
    Page3(),
    Page4(),
  ];

// cũ
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'page1',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'page2',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'page3',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'page4',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }

  Future<List<SinhVien>> _read() async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'data';
    final students = prefs.getString(key);
    List<dynamic> data = json.decode(students);
    List<SinhVien> posts =
        data.map((dynamic item) => SinhVien.fromJson(item)).toList();

    return posts;
  }

  _save() async {
    final response = await http.get(
        Uri.parse('https://6090a8023847340017021912.mockapi.io/linh/user3'));
    final students = response.body;
    print("===============================");
    print(students);

    final prefs = await SharedPreferences.getInstance();
    final key = 'data';
    prefs.setString(key, response.body);
  }
}
