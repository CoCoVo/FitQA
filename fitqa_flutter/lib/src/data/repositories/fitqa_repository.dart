import 'package:dio/dio.dart';
import 'package:fitqa/src/common/exceptions.dart';
import 'package:fitqa/src/config/remote_server_domain.dart';
import 'package:fitqa/src/data/dtos/trainer/get_trainers_response/get_trainers_response.dart';
import 'package:fitqa/src/domain/entities/trainer/trainer/trainer.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final clientProvider =
    Provider((ref) => Dio(BaseOptions(baseUrl: RemoteServerDomain.localFitQA)));

final fitQaRepositoryProvider =
    Provider<FitQaRepositoryApi>((ref) => FitQaRepositoryApi(ref.read));

abstract class FitQaRepository {
  Future<List<Trainer>> getTrainers();
}

class FitQaRepositoryApi implements FitQaRepository {
  final Reader reader;

  FitQaRepositoryApi(this.reader);

  @override
  Future<List<Trainer>> getTrainers({CancelToken? cancelToken}) async {
    try {
      final response = await reader(clientProvider)
          .get('/trainers', cancelToken: cancelToken);
      return GetTrainersResponse.fromJson(response.data).data!;
    } on DioError catch (error) {
      throw DataException.fromDioError(error);
    }
  }
}
