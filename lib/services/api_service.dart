import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/post_model.dart';

final apiServiceProvider = Provider((ref) => ApiService());

class ApiService {
  Future<List<PostModel>> getPost() async {
    try {
      final response = await Dio().get("https://jsonplaceholder.typicode.com/posts");
      return (response.data as List).map((e) => PostModel.fromJson(e)).toList();
    } catch (e) {
      throw Exception("Post Model Error $e");
    }
  }
}
