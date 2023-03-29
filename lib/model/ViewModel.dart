import 'package:flutter_riverpod/flutter_riverpod.dart';

class PostViewModel extends StateNotifier<dynamic> {
  PostViewModel(super.state, this._ref);
  Ref _ref;

  void getAll(List<List<String>> postList) {
    state = postList;
  }
}
