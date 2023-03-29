import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/util/Post.dart';

import 'dummy.dart';

class Repository {
  final Ref _ref;
  Repository(this._ref);

  List<Post> getAll() {
    dynamic postList = Dummy.tableContents;
    return postList;
  }
}
