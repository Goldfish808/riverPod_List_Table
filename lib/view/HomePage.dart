import 'package:flutter/material.dart';
import 'package:riverpod_test/util/dummy.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static final List<String> tableTitle = Dummy.tableTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 900,
          color: Colors.lightBlue,
          child: Row(
            children: [Text('테이블 이름')],
          ),
        ),
      ),
    );
  }
}
