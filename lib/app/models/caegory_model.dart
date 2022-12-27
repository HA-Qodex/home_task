// To parse this JSON data, do
//
//     final categoryModel = categoryModelFromJson(jsonString);

import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

CategoryModel categoryModelFromJson(String str) => CategoryModel.fromJson(json.decode(str));

String categoryModelToJson(CategoryModel data) => json.encode(data.toJson());

class CategoryModel {
  CategoryModel({
    this.categoryName,
    this.categoryType,
    this.id,
    this.image,
  });

  String? categoryName;
  String? categoryType;
  String? id;
  String? image;

  CategoryModel.fromDocumentSnapshot({required DocumentSnapshot documentSnapshot}) {
    categoryName = documentSnapshot["category_name"];
    categoryType = documentSnapshot["category_type"];
    id = documentSnapshot["id"];
    image = documentSnapshot["image"];
  }

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
    categoryName: json["category_name"],
    categoryType: json["category_type"],
    id: json["id"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "category_name": categoryName,
    "category_type": categoryType,
    "id": id,
    "image": image,
  };
}
