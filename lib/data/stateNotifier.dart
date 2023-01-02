import 'package:Riverpod/models/post_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final postStateNotifierProvider =
    StateNotifierProvider.autoDispose<PostStateNotifier, List<PostModel>>(
        (ref) => PostStateNotifier());

class PostStateNotifier extends StateNotifier<List<PostModel>> {
  PostStateNotifier() : super([]);

  void addPost(PostModel postModel) {
    state = [...state, postModel];
  }

  void clearPost() {
    state = [];
  }
}
