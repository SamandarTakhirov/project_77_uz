import 'ad_model.dart';
import 'dart:convert';

class BaseModel {
  final int? count;
  final int? page;
  final List<Result>? results;

  BaseModel({
    this.count,
    this.page,
    this.results,
  });

  factory BaseModel.fromJson(String str) => BaseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory BaseModel.fromMap(Map<String, dynamic> json) => BaseModel(
    count: json["count"],
    page: json["page"],
    results: json["results"] == null ? [] : List<Result>.from(json["results"]!.map((x) => Result.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "count": count,
    "page": page,
    "results": results == null ? [] : List<dynamic>.from(results!.map((x) => x.toMap())),
  };
}
