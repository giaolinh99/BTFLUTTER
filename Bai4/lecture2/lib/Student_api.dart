import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:lecture2/models/sinhvien.dart';



class StudentApi {
  Dio dio = Dio();

  final String postUrl =
      'https://6090a8023847340017021912.mockapi.io/linh/user3';

  Future<List<SinhVien>> getPost() async {
    try {
      var response = await dio.get(postUrl);

      if (response.statusCode == 200) {
        List<dynamic> students = await json.decode(response.data);

        List<SinhVien> posts =
        students.map((dynamic item) => SinhVien.fromJson(item)).toList();
        return posts;
      }
    } catch (e) {
      return List<SinhVien>();
    }
  }
}
