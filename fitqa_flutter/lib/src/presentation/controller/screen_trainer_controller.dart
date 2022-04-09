import 'package:fitqa/src/application/trainer/trainer_facade.dart';
import 'package:fitqa/src/presentation/state/screen_trainer_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScreenTrainerController {
  ScreenTrainerController({required this.reader});

  final Reader reader;

  Future<void> initState() async {
    print("initState");
    refreshTrainerList();
  }

  void dispose() {}

  Future<void> refreshTrainerList() async {
    reader(updatedTrainersProvider.notifier).retrieveTrainers();
  }

  void updateFilter(List<String> filterAreas) {
    reader(InterestAreasNotifier.provider.notifier).update(filterAreas);
  }
}

final screenTrainerControllerProvider = Provider((ref) {
  return ScreenTrainerController(reader: ref.read);
});