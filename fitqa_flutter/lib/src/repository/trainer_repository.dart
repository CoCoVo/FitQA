import 'package:dio/dio.dart';
import 'package:fitqa/src/common/exceptions.dart';
import 'package:fitqa/src/config/remote_server_domain.dart';
import 'package:fitqa/src/domain/entities/trainer/trainer/trainer.dart';
import 'package:fitqa/src/repository/dto/trainer/trainer_detail_response/trainer_detail_response.dart';
import 'package:fitqa/src/repository/dto/trainer/trainer_list_response/trainer_list_response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final clientProvider = Provider(
    (ref) => Dio(BaseOptions(baseUrl: RemoteServerDomain.fitqaApiUrl)));

final fitQaRepositoryProvider =
    Provider<TrainerRepositoryAPI>((ref) => TrainerRepositoryAPI(ref.read));

abstract class TrainerRepository {
  Future<List<Trainer>> getTrainers();

  Future<Trainer> getTrainerByToken(String trainerToken);
}

class TrainerRepositoryAPI implements TrainerRepository {
  final Reader reader;

  TrainerRepositoryAPI(this.reader);

  @override
  Future<List<Trainer>> getTrainers({CancelToken? cancelToken}) async {
    try {
      final response = await reader(clientProvider)
          .get('/trainers', cancelToken: cancelToken);
      return TrainerListResponse.fromJson(response.data).data!;
    } on DioError catch (error) {
      throw DataException.fromDioError(error);
    }
  }

  @override
  Future<Trainer> getTrainerByToken(String trainerToken,
      {CancelToken? cancelToken}) async {
    try {
      final response = await reader(clientProvider)
          .get('/trainers/$trainerToken', cancelToken: cancelToken);
      return TrainerDetailResponse.fromJson(response.data).data!;
    } on DioError catch (error) {
      throw DataException.fromDioError(error);
    }
  }
}
