import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/util/Repository.dart';

import '../util/Post.dart';

final postViewModel =
    StateNotifierProvider<PostViewModel, List<List<String>>>((ref) => PostViewModel([], ref)..initViewModel());

class PostViewModel extends StateNotifier<List<List<String>>> {
  Ref _ref;
  PostViewModel(super.state, this._ref);

  void initViewModel() async {
    List<List<String>> postList = await _ref.read(repository).getAll();
    state = postList;
  }

  void refresh(List<List<String>> postList) {
    state = postList;
  }
}
