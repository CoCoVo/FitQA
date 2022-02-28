import 'package:fitqa/widget/fitqa_appbar.dart';
import 'package:flutter/material.dart';

class ScreenRequest extends StatelessWidget {
  const ScreenRequest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: FAppbar('글쓰기'),
        body: Center(child: Text('hello')),
      ),
    );
  }
}
