import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/util/Repository.dart';

final postViewModel = StateNotifierProvider<PostViewModel, dynamic>((ref) => PostViewModel([], ref)..getAll());

class PostViewModel extends StateNotifier<dynamic> {
  PostViewModel(super.state, this._ref);
  Ref _ref;

  void getAll() async {
    List<List<String>> postList = await _ref.read(repository).getAll();
    state = postList;
  }

  void addList(List<List<String>> postList) {
    state = [...state, postList];
  }
}
