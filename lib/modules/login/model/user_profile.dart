// To parse this JSON data, do
//
//     final chatModel = chatModelFromJson(jsonString);

import 'dart:convert';

List<UserPofile> chatModelFromJson(String str) =>
    List<UserPofile>.from(json.decode(str).map((x) => UserPofile.fromJson(x)));

String chatModelToJson(List<UserPofile> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserPofile {
  UserPofile(
      {this.password,
      this.userName,
      this.userId,
      this.imageUrl,
      this.profileUrl,
      this.nameLastName,
      this.email,
      this.department});

  int? userId;
  String? userName;
  String? password;
  String? imageUrl;
  String? profileUrl;
  String? nameLastName;
  String? department;
  String? email;

  factory UserPofile.fromJson(Map<String, dynamic> json) => UserPofile(
        // connectionId: json["connectionId"],
        userName: json["userName"],
        userId: json["userId"],
        imageUrl: json["imageURL"],
        profileUrl: json["profileUrl"],
        nameLastName: json["lastName"],
        department: json["department"],
        email: json["email"],
      );

  Map<String, dynamic> toJson() => {
        "password": password,
        "userName": userName,
        "userId": userId,
        "lastName:": nameLastName,
        "department": department,
        "email": email,
        "profileUrl": profileUrl,
      };
}
