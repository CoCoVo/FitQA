import 'package:fitqa/src/domain/entities/common/enum/common_eunm.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FilterNotifier extends StateNotifier<List<WorkOutArea>> {
  FilterNotifier() : super([]) {
    reset();
  }

  void reset() {
    state.clear();
  }

  void update(List<WorkOutArea> filter) {
    final areas = filter.where((area) => area != WorkOutArea.none).toList();

    reset();
    state = [...areas];
  }
}
