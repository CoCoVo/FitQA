import 'package:dio/dio.dart';
import 'package:fitqa/src/config/remote_server_domain.dart';
import 'package:fitqa/src/repository/feedback_repository.dart';
import 'package:fitqa/src/repository/internal_storage_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final clientProvider =
    Provider((ref) => Dio(BaseOptions(baseUrl: RemoteServerDomain.localFitQA)));

final feedbackRepositoryProvider =
    Provider<FeedbackRepository>((ref) => FeedbackRepositoryAPI(ref.read));

final internalStorageProvider = Provider<InternalStorageRepository>(
    (ref) => InternalStorageRepositoryAPI());
