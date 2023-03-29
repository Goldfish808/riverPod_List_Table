import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/controller/Controller.dart';
import 'package:riverpod_test/model/ViewModel.dart';
import 'package:riverpod_test/util/dummy.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  static final List<String> tableTitle = Dummy.tableTitle;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pM = ref.watch(postViewModel);
    final pC = ref.read(postController);

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: 900,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.amberAccent,
                  child: Row(
                    children: [
                      Expanded(child: Text(tableTitle[0]), flex: 1),
                      Expanded(child: Text(tableTitle[1]), flex: 10),
                      Expanded(child: Text(tableTitle[2]), flex: 3),
                      Expanded(child: Text(tableTitle[3]), flex: 2),
                      Expanded(child: Text(tableTitle[4]), flex: 2),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white38,
                  child: Column(
                    children: List.generate(pM.length, (index) {
                      return Row(
                        children: [
                          Expanded(child: Text(pM[index][0]), flex: 1),
                          Expanded(child: Text(pM[index][1]), flex: 10),
                          Expanded(child: Text(pM[index][2]), flex: 3),
                          Expanded(child: Text(pM[index][3]), flex: 2),
                          Expanded(child: Text(pM[index][4]), flex: 2),
                        ],
                      );
                    }),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
