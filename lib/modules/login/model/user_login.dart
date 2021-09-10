
import 'dart:convert';

List<UserLogin> chatModelFromJson(String str) =>
    List<UserLogin>.from(json.decode(str).map((x) => UserLogin.fromJson(x)));

String chatModelToJson(List<UserLogin> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserLogin {
  UserLogin(
      {this.userId, this.token, this.message, this.errorCode, this.success});

  int? userId;
  String? token;
  bool? success;
  String? message;
  int? errorCode;

  factory UserLogin.fromJson(Map<String, dynamic> json) => UserLogin(
        // connectionId: json["connectionId"],
        userId: json["userId"],
        token: json["token"],
        success: json["success"],
        message: json["message"],
        errorCode: json["errorCode"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "token": token,
        "success": success,
        "message": message,
        "errorCode": errorCode
      };
}
