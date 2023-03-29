import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/util/Post.dart';

import 'dummy.dart';

final repository = Provider<Repository>((ref) => Repository(ref));

class Repository {
  final Ref _ref;
  Repository(this._ref);

  List<List<String>> getAll() {
    List<List<String>> postList = Dummy.tableContents;
    return postList;
  }
}
