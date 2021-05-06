import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<dynamic>> fetchAlbum() async {
  List<dynamic> items1 = [];
  final response = await http.get(Uri.parse('https://6090a8023847340017021912.mockapi.io/linh/user3'));

    final data = await jsonDecode(response.body);
    items1 = data;
    return items1;

}
