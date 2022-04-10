import 'package:dio/dio.dart';
import 'package:fitqa/src/common/exceptions.dart';
import 'package:fitqa/src/data/command/register_feedback_comment/register_feedback_comment.dart';
import 'package:fitqa/src/data/dtos/feedback/feedback_detail_response/feedback_detail_response.dart';
import 'package:fitqa/src/data/dtos/feedback/feedback_list_response/feedback_list_response.dart';
import 'package:fitqa/src/domain/entities/feedback/feedback/feedback.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const serverIP = (kIsWeb) ? '127.0.0.1' : '10.0.2.2';
final clientProvider = Provider(
    (ref) => Dio(BaseOptions(baseUrl: 'http://$serverIP:8080/api/v1')));

final feedbackRepositoryProvider =
    Provider<FeedbackRepositoryAPI>((ref) => FeedbackRepositoryAPI(ref.read));

abstract class FeedbackRepository {
  Future<List<Feedback>> getFeedbacks();
  Future<Feedback> getFeedbackByToken(String feedbackToken);
  Future<Feedback> writeComment(RegisterFeedbackComment req);
}

class FeedbackRepositoryAPI implements FeedbackRepository {
  final Reader reader;
  FeedbackRepositoryAPI(this.reader);

  @override
  Future<List<Feedback>> getFeedbacks({CancelToken? cancelToken}) async {
    try {
      final response = await reader(clientProvider)
          .get("/feedbacks", cancelToken: cancelToken);
      return FeedbackListResponse.fromJson(response.data).data!;
    } on DioError catch (error) {
      throw DataException.fromDioError(error);
    }
  }

  @override
  Future<Feedback> getFeedbackByToken(String feedbackToken,
      {CancelToken? cancelToken}) async {
    try {
      final response = await reader(clientProvider)
          .get("/feedbacks/$feedbackToken", cancelToken: cancelToken);
      return FeedbackDetailResponse.fromJson(response.data).data!;
    } on DioError catch (error) {
      throw DataException.fromDioError(error);
    }
  }

  @override
  Future<Feedback> writeComment(RegisterFeedbackComment req,
      {CancelToken? cancelToken}) async {
    try {
      final response = await reader(clientProvider).post(
          "/feedbacks/${req.feedbackToken}/comment",
          data: {"writerId": req.writerId, "comment": req.comment},
          cancelToken: cancelToken);
      return FeedbackDetailResponse.fromJson(response.data).data!;
    } on DioError catch (error) {
      throw DataException.fromDioError(error);
    }
  }
}
