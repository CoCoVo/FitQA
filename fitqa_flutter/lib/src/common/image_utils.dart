import 'package:fitqa/src/domain/entities/feedback/feedback_trainer_image/feedback_trainer_image.dart';

class ImageUtils {
  static String getTrainerProfile(List<FeedbackTrainerImage> images) {
    return images.firstWhere((img) => img.imageType == "PROFILE").imageUrl;
  }
}
