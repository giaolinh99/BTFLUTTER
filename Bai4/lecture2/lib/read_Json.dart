import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// ignore: camel_case_types

  Future<List<dynamic>> readJson() async  {
     List<dynamic> items1 = [];

    final String response = await rootBundle.loadString('assets/dssv.json');
    final data = await json.decode(response);

     items1 = data;
    return items1;

  }




