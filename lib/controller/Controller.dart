import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/main.dart';

final postController = Provider<PostController>((ref) {
  return PostController(ref);
});

class PostController {
  final context = navigatorKey.currentContext!;
  PostController(this._ref);
  final Ref _ref;
}
