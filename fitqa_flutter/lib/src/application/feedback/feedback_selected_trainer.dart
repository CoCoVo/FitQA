import 'package:fitqa/src/domain/entities/trainer/trainer/trainer.dart';
import 'package:fitqa/src/domain/entities/trainer/trainer_feedback_price/trainer_feedback_price.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectedTrainerProvider = StateProvider<Trainer?>((ref) => null);
final selectedTrainerFeedbackPriceProvider =
    StateProvider<TrainerFeedbackPrice?>((ref) => null);
