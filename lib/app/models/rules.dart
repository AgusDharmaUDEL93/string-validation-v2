// To parse this JSON data, do
//
//     final rules = rulesFromJson(jsonString);

import 'dart:convert';

Rules rulesFromJson(String str) => Rules.fromJson(json.decode(str));

String rulesToJson(Rules data) => json.encode(data.toJson());

class Rules {
  String message;
  List<String> result;
  int status;

  Rules({
    required this.message,
    required this.result,
    required this.status,
  });

  factory Rules.fromJson(Map<String, dynamic> json) => Rules(
        message: json["message"],
        result: List<String>.from(json["result"].map((x) => x)),
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "result": List<dynamic>.from(result.map((x) => x)),
        "status": status,
      };
}
