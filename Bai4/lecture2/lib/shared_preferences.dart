import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:lecture2/models/sinhvien.dart';

import 'package:shared_preferences/shared_preferences.dart';

class LocalData {
  static Future<List<SinhVien>> _read() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final key = 'data';
    final students = prefs.getString(key);
    List<dynamic> data = json.decode(students);
    List<SinhVien> posts =
    data.map((dynamic item) => SinhVien.fromJson(item)).toList();

    return posts;
  }
}