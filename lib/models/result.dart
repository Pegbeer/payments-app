import 'dart:convert';

class Result<T> {
  Status status;
  T? data;
  String? message;

  Result(this.status, T? data, String? message);

  static Result success<T>(T? data) {
    return Result(Status.success, data, null);
  }

  static Result error<T>(String message, int code) {
    return Result(Status.error, null, message);
  }

  factory Result.fromJson(String str) => Result.fromMap(json.decode(str));

  factory Result.fromMap(Map<String, dynamic> json) =>
      Result(Status.success, json["data"], json["message"]);
}

enum Status { success, error }
