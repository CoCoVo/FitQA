import 'package:fitqa/src/domain/command/user/update_user_info/update_user_info.dart';
import 'package:fitqa/src/domain/entities/user/user/user.dart';

abstract class UserService {
  Future<User> getUserProfile(String userToken);

  Future<User> updateUserInfo(String userToken, UpdateUserInfo command);
}
