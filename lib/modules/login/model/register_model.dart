// To parse this JSON data, do
//
//     final register = registerFromJson(jsonString);

import 'dart:convert';

Register registerFromJson(String str) => Register.fromJson(json.decode(str));

String registerToJson(Register data) => json.encode(data.toJson());

class Register {
    Register({
        this.name,
        this.surname,
        this.email,
        this.password,
        this.confirmPassword,
        this.reCaptcha,
    });

    String? name;
    String? surname;
    String? email;
    String? password;
    String? confirmPassword;
    String? reCaptcha;

    factory Register.fromJson(Map<String, dynamic> json) => Register(
        name: json["name"],
        surname: json["surname"],
        email: json["email"],
        password: json["password"],
        confirmPassword: json["confirmPassword"],
        reCaptcha: json["reCaptcha"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "surname": surname,
        "email": email,
        "password": password,
        "confirmPassword": confirmPassword,
        "reCaptcha": reCaptcha,
    };
}
