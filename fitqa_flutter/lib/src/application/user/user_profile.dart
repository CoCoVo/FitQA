import 'package:fitqa/src/application/state/state.dart';
import 'package:fitqa/src/application/storage/user_token_facade.dart';
import 'package:fitqa/src/domain/command/user/update_user_info/update_user_info.dart';
import 'package:fitqa/src/domain/entities/common/enum/workout_level.dart';
import 'package:fitqa/src/domain/entities/common/enum/workout_style.dart';
import 'package:fitqa/src/domain/entities/user/user/user.dart';
import 'package:fitqa/src/domain/services/user/user_service.dart';
import 'package:fitqa/src/domain/services/user/user_service_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userProfileProvider =
    StateNotifierProvider<UserProfileNotifier, State<User>>((ref) {
  final userService = ref.watch(userServiceProvider);
  final userToken = ref.watch(userTokenProvider);
  return UserProfileNotifier(userService, userToken);
});

class UserProfileNotifier extends StateNotifier<State<User>> {
  UserProfileNotifier(this.userService, this.userToken)
      : super(const State.init()) {
    getUserProfile();
  }

  UserService userService;
  String userToken;

  void getUserProfile() async {
    try {
      state = const State.loading();
      final userProfile = await userService.getUserProfile(userToken);
      state = State.success(userProfile);
    } on Exception catch (e) {
      state = State.error(e);
    }
  }

  void updateUserInfo(
    String userName,
    String userBirth,
    WorkoutLevel workoutLevel,
    WorkOutStyle workoutStyle,
    int height,
    int weight,
    double fat,
    double muscle,
  ) async {
    try {
      state = const State.loading();
      final userProfile = await userService.updateUserInfo(
          userToken,
          UpdateUserInfo(
            name: userName,
            birthDay: userBirth,
            height: height,
            weight: weight,
            bodyPatPercentage: fat,
            muscleMass: muscle,
            workOutStyle: workoutStyle,
            workOutLevel: workoutLevel,
          ));
      state = State.success(userProfile);
    } on Exception catch (e) {
      state = State.error(e);
    }
  }
}
