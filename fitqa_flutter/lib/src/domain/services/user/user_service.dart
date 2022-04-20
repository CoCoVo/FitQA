import 'package:fitqa/src/domain/entities/user/user/user.dart';

abstract class UserService {
  Future<User> getUserProfile(String userToken);
}
