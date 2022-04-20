import 'package:fitqa/src/domain/command/feedback/register_feedback/register_feedback.dart';
import 'package:fitqa/src/domain/command/feedback/register_feedback_answer/register_feedback_answer.dart';
import 'package:fitqa/src/domain/command/feedback/register_feedback_comment/register_feedback_comment.dart';
import 'package:fitqa/src/domain/entities/feedback/feedback_answer/feedback_answer.dart';
import 'package:fitqa/src/domain/entities/feedback/fitqa_feedback/fitqa_feedback.dart';

abstract class FeedbackService {
  Future<FitqaFeedback> getFeedbackDetail(String feedbackToken);
  Future<List<FitqaFeedback>> getFeedbackAll();

  Future<FitqaFeedback> registerFeedback(RegisterFeedback command);
  Future<FitqaFeedback> registerFeedbackComment(
      String feedbackToken, RegisterFeedbackComment command);
  Future<FeedbackAnswer> registerFeedbackAnswer(
      String feedbackToken, RegisterFeedbackAnswer command);
}
