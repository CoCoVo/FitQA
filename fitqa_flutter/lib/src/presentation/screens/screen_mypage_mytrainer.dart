import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScreenMyPageMyTrainer extends ConsumerWidget {
  const ScreenMyPageMyTrainer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      child: GridView.count(crossAxisCount: 2,
      padding: const EdgeInsets.all(5.0),
      childAspectRatio: 8.0 / 12.0,
        children: const [
          Card(child: Text('123'),),
          Card(child: Text('123'),),
          Card(child: Text('123'),),
          Card(child: Text('123'),),
        ],
      ),
    );
  }
}