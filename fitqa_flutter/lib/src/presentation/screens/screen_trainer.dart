import 'package:fitqa/src/presentation/controller/screen_trainer_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScreenTrainer extends ConsumerWidget {
  const ScreenTrainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final trainers = ref.watch(trainerControllerProvider);
    return trainers.when(
        data: (trainers) {
          return Text("${trainers.length}");
        },
        error: (e, ___) => Text("error"),
        loading: () => Container(child: Text("loading")));
    return Container(
      child: Center(
        child: Text('Trainer List Screen'),
      ),
    );
  }
}
