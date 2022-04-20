import 'package:dio/dio.dart';
import 'package:fitqa/src/common/exceptions.dart';
import 'package:fitqa/src/domain/command/user/update_user_info/update_user_info.dart';
import 'package:fitqa/src/domain/entities/user/user/user.dart';
import 'package:fitqa/src/repository/dto/user/user_detail_response/user_detail_response.dart';
import 'package:fitqa/src/repository/repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class UserRepository {
  Future<User> getUserByToken(String userToken);
  Future<User> updateUserInfo(String userToken, UpdateUserInfo command);
}

class UserRepositoryAPI implements UserRepository {
  final Reader reader;
  UserRepositoryAPI(this.reader);

  @override
  Future<User> getUserByToken(String userToken,
      {CancelToken? cancelToken}) async {
    try {
      final response = await reader(clientProvider)
          .get("/users/$userToken", cancelToken: cancelToken);
      return UserDetailResponse.fromJson(response.data).data!;
    } on DioError catch (error) {
      throw DataException.fromDioError(error);
    }
  }

  @override
  Future<User> updateUserInfo(String userToken, UpdateUserInfo command,
      {CancelToken? cancelToken}) async {
    try {
      final response = await reader(clientProvider).post(
          "/users/$userToken/update",
          data: command.toJson(),
          cancelToken: cancelToken);
      return UserDetailResponse.fromJson(response.data).data!;
    } on DioError catch (error) {
      throw DataException.fromDioError(error);
    }
  }
}
