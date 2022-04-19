import 'package:fitqa/src/domain/entities/common/enum/common_eunm.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FilterNotifier extends StateNotifier<List<WorkOutArea>> {
  FilterNotifier() : super([]) {
    reset();
  }

  void reset() {
    state = [WorkOutArea.all];
  }

  void add(WorkOutArea area) {
    // 초기값을 선택하면 다른 값은 없애기.
    if (area == WorkOutArea.all) {
      reset();
      return;
    }

    if (!state.contains(area)) {
      state = [...state, area];
    }

    // 다른 값이 추가되면 초기값은 선택하지 않도록 함.
    if (state.contains(WorkOutArea.all) && state.length > 1) {
      delete(WorkOutArea.all);
    }
  }

  void delete(WorkOutArea area) {
    if (state.contains(area)) {
      state = state.where((element) => element != area).toList();
    }

    // 아무것도 선택하지 않으면 초기값을 선택하도록 함.
    if (state.isEmpty) reset();
  }

  void update(WorkOutArea area, bool isAdd) {
    if (isAdd) {
      add(area);
    } else {
      delete(area);
    }
  }
}
