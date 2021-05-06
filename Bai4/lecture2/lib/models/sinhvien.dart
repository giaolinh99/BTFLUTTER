import 'package:flutter/material.dart';

class SinhVien{
  int id;
  String name;
  String avatar;
  int age;
  String address;
  SinhVien({
    this.id,
    this.name,
    this.avatar,
    this.age,
    this.address
});

  // factory SinhVien.fromJson(Map<String, dynamic> json) {
  //   return SinhVien(
  //     id: json['id'],
  //     name: json['name'],
  //     avatar: json['avatar'],
  //     age: json['age'],
  //     address: json['address'],
  //   );
  // }


  factory SinhVien.fromJson(Map<String, dynamic> data) => SinhVien(
    id: data["id"],
    name: data["name"],
    avatar: data["avatar"],
    age: data["age"],
    address: data["address"],
  );
  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "avatar": avatar,
    "age": age,
    "address": address,
  };

}