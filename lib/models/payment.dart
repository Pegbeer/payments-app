import 'dart:convert';

class Payment {
  Payment({
    this.id,
    this.number,
    this.name,
  });

  String? id;
  int? number;
  String? name;

  factory Payment.fromJson(String str) => Payment.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Payment.fromMap(Map<String, dynamic> json) => Payment(
        id: json["id"],
        number: json["number"],
        name: json["name"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "number": number,
        "name": name,
      };
}
