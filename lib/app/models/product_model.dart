// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

ProductModel productModelFromJson(String str) => ProductModel.fromJson(json.decode(str));

String productModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
  ProductModel({
    this.categoryType,
    this.description,
    this.id,
    this.image,
    this.name,
    this.price,
    this.orderStatus,
  });

  String? categoryType;
  String? description;
  String? id;
  String? image;
  String? name;
  int? price;
  int? orderStatus;

  ProductModel.fromDocumentSnapshot({required DocumentSnapshot documentSnapshot}) {
    categoryType = documentSnapshot["category_type"];
    description= documentSnapshot["description"];
    id= documentSnapshot["id"];
    image= documentSnapshot["image"];
    name= documentSnapshot["name"];
    price= documentSnapshot["price"];
    orderStatus= documentSnapshot["order_status"];
  }

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    categoryType: json["category_type"],
    description: json["description"],
    id: json["id"],
    image: json["image"],
    name: json["name"],
    price: json["price"],
  );

  Map<String, dynamic> toJson() => {
    "category_type": categoryType,
    "description": description,
    "id": id,
    "image": image,
    "name": name,
    "price": price,
  };
}
