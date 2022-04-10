import 'package:dio/dio.dart';
import 'package:fitqa/src/common/exceptions.dart';
import 'package:fitqa/src/data/dtos/feedback/get_feedbacks_response/get_feedbacks_response.dart';
import 'package:fitqa/src/data/dtos/trainer/get_trainers_response/get_trainers_response.dart';
import 'package:fitqa/src/domain/entities/feedback/feedback.dart';
import 'package:fitqa/src/domain/entities/trainer/trainer/trainer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const serverIP = (kIsWeb) ? '127.0.0.1' : '10.0.2.2';
final clientProvider = Provider(
    (ref) => Dio(BaseOptions(baseUrl: 'http://$serverIP:8080/api/v1')));

final fitQaRepositoryProvider =
    Provider<FitQaRepositoryApi>((ref) => FitQaRepositoryApi(ref.read));

abstract class FitQaRepository {
  Future<List<Trainer>> getTrainers();

  Future<List<Feedback>> getFeedbacks();
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

  @override
  Future<List<Feedback>> getFeedbacks({CancelToken? cancelToken}) async {
    try {
      final response = await reader(clientProvider)
          .get("/feedbacks", cancelToken: cancelToken);
      return GetFeedbacksResponse.fromJson(response.data).data!;
    } on DioError catch (error) {
      throw DataException.fromDioError(error);
    }
  }
}
