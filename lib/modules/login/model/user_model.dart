// To parse this JSON data, do
//
//     final chatModel = chatModelFromJson(jsonString);

import 'dart:convert';

List<UserModel> chatModelFromJson(String str) =>
    List<UserModel>.from(json.decode(str).map((x) => UserModel.fromJson(x)));

String chatModelToJson(List<UserModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserModel {
  UserModel({this.password, this.userName});

  String? password;
  String? userName;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        // connectionId: json["connectionId"],
        userName: json["userName"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {"password": password, "userName": userName};
}
