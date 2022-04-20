import 'package:dio/dio.dart';
import 'package:fitqa/src/common/exceptions.dart';
import 'package:fitqa/src/domain/entities/user/user/user.dart';
import 'package:fitqa/src/repository/dto/user/user_detail_response/user_detail_response.dart';
import 'package:fitqa/src/repository/repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class UserRepository {
  Future<User> getUserByToken(String userToken);
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
}
