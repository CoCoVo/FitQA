import 'package:dio/dio.dart';
import 'package:fitqa/src/common/exceptions.dart';
import 'package:fitqa/src/data/command/register_feedback/register_feedback.dart';
import 'package:fitqa/src/data/command/register_feedback_comment/register_feedback_comment.dart';
import 'package:fitqa/src/domain/entities/feedback/feedback/feedback.dart';
import 'package:fitqa/src/repository/dto/feedback/feedback_detail_response/feedback_detail_response.dart';
import 'package:fitqa/src/repository/dto/feedback/feedback_list_response/feedback_list_response.dart';
import 'package:fitqa/src/repository/repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class FeedbackRepository {
  Future<List<Feedback>> getFeedbacks();
  Future<Feedback> getFeedbackByToken(String feedbackToken);
  Future<Feedback> writeComment(RegisterFeedbackComment req);
  Future<Feedback> registerFeedback(RegisterFeedback req);
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

  @override
  Future<Feedback> registerFeedback(RegisterFeedback req,
      {CancelToken? cancelToken}) async {
    try {
      final response = await reader(clientProvider).post("/feedbacks/register",
          data: {
            "ownerId": req.ownerId,
            "trainerId": req.trainerId,
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
