import 'package:fitqa/src/application/state/state.dart';
import 'package:fitqa/src/application/storage/user_token_facade.dart';
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
}
