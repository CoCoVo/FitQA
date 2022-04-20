import 'package:fitqa/src/domain/command/user/update_user_info/update_user_info.dart';
import 'package:fitqa/src/domain/entities/user/user/user.dart';
import 'package:fitqa/src/domain/services/user/user_service.dart';
import 'package:fitqa/src/repository/repository.dart';
import 'package:fitqa/src/repository/user_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userServiceProvider = Provider<UserServiceImpl>((ref) {
  final userRepository = ref.watch(userRepositoryProvider);
  return UserServiceImpl(userRepository);
});

class UserServiceImpl implements UserService {
  UserServiceImpl(this.userRepository);
  late UserRepository userRepository;

  @override
  Future<User> getUserProfile(String userToken) {
    return userRepository.getUserByToken(userToken);
  }

  @override
  Future<User> updateUserInfo(String userToken, UpdateUserInfo command) {
    return userRepository.updateUserInfo(userToken, command);
  }
}
