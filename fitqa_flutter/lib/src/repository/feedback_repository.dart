import 'package:dio/dio.dart';
import 'package:fitqa/src/common/exceptions.dart';
import 'package:fitqa/src/domain/command/feedback/register_feedback/register_feedback.dart';
import 'package:fitqa/src/domain/command/feedback/register_feedback_comment/register_feedback_comment.dart';
import 'package:fitqa/src/domain/entities/feedback/fitqa_feedback/fitqa_feedback.dart';
import 'package:fitqa/src/repository/dto/feedback/feedback_detail_response/feedback_detail_response.dart';
import 'package:fitqa/src/repository/dto/feedback/feedback_list_response/feedback_list_response.dart';
import 'package:fitqa/src/repository/repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class FeedbackRepository {
  Future<List<FitqaFeedback>> getFeedbacks();
  Future<FitqaFeedback> getFeedbackByToken(String feedbackToken);
  Future<FitqaFeedback> registerComment(
      String feedbackToken, RegisterFeedbackComment req);
  Future<FitqaFeedback> registerFeedback(RegisterFeedback req);
}

class FeedbackRepositoryAPI implements FeedbackRepository {
  final Reader reader;
  FeedbackRepositoryAPI(this.reader);

  @override
  Future<List<FitqaFeedback>> getFeedbacks({CancelToken? cancelToken}) async {
    try {
      final response = await reader(clientProvider)
          .get("/feedbacks", cancelToken: cancelToken);
      return FeedbackListResponse.fromJson(response.data).data!;
    } on DioError catch (error) {
      throw DataException.fromDioError(error);
    }
  }

  @override
  Future<FitqaFeedback> getFeedbackByToken(String feedbackToken,
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
  Future<FitqaFeedback> registerComment(
      String feedbackToken, RegisterFeedbackComment req,
      {CancelToken? cancelToken}) async {
    try {
      final response = await reader(clientProvider).post(
          "/feedbacks/$feedbackToken/comment",
          data: req.toJson(),
          cancelToken: cancelToken);
      return FeedbackDetailResponse.fromJson(response.data).data!;
    } on DioError catch (error) {
      throw DataException.fromDioError(error);
    }
  }

  @override
  Future<FitqaFeedback> registerFeedback(RegisterFeedback req,
      {CancelToken? cancelToken}) async {
    try {
      final response = await reader(clientProvider).post("/feedbacks/register",
          data: {
            "ownerToken": req.ownerToken,
            "trainerToken": req.trainerToken,
            "interestArea": req.interestArea,
            "price": req.price,
            "title": req.title,
            "content": req.content,
            "locked": req.locked
          },
          cancelToken: cancelToken);
      return FeedbackDetailResponse.fromJson(response.data).data!;
    } on DioError catch (error) {
      throw DataException.fromDioError(error);
    }
  }
}
