

import 'dart:convert';

LoginResp loginRespFromJson(String str) => LoginResp.fromJson(json.decode(str));

String loginRespToJson(LoginResp data) => json.encode(data.toJson());

class LoginResp {
  LoginResp({
    required this.status,
    required this.name,
    required this.refresh,
    required this.access,
    required this.message,
    required this.urlId,
  });

  bool status;
  String name;
  String refresh;
  String access;
  String message;
  String urlId;

  factory LoginResp.fromJson(Map<String, dynamic> json) => LoginResp(
    status: json["status"],
    name: json["name"],
    refresh: json["refresh"],
    access: json["access"],
    message: json["message"],
    urlId: json["url_id"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "name": name,
    "refresh": refresh,
    "access": access,
    "message": message,
    "url_id": urlId,
  };
}
