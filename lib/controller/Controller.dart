import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/main.dart';
import 'package:riverpod_test/model/ViewModel.dart';
import 'package:riverpod_test/util/Repository.dart';

final postController = Provider<PostController>((ref) {
  return PostController(ref);
});

class PostController {
  final context = navigatorKey.currentContext!;
  PostController(this._ref);
  final Ref _ref;

  void find() {
    List<List<String>> postList = _ref.read(repository).getAll();
    _ref.read(postViewModel.notifier).refresh(postList);
  }
}
