// To parse this JSON data, do
//
//     final productoCoinModel = productoCoinModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

ProductoCoinModel productoCoinModelFromJson(String str) => ProductoCoinModel.fromJson(json.decode(str));

String productoCoinModelToJson(ProductoCoinModel data) => json.encode(data.toJson());

class ProductoCoinModel {
  List<Map<String, String>> data;
  int timestamp;

  ProductoCoinModel({
    required this.data,
    required this.timestamp,
  });

  factory ProductoCoinModel.fromJson(Map<String, dynamic> json) => ProductoCoinModel(
    data: List<Map<String, String>>.from(json["data"].map((x) => Map.from(x).map((k, v) => MapEntry<String, String>(k, v)))),
    timestamp: json["timestamp"],
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => Map.from(x).map((k, v) => MapEntry<String, dynamic>(k, v)))),
    "timestamp": timestamp,
  };
}
