import 'package:dio/dio.dart';
import 'package:fitqa/src/repository/feedback_repository.dart';
import 'package:fitqa/src/repository/internal_storage_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const serverIP = (kIsWeb) ? '127.0.0.1' : '10.0.2.2';
final clientProvider = Provider(
    (ref) => Dio(BaseOptions(baseUrl: 'http://$serverIP:8080/api/v1')));

final feedbackRepositoryProvider =
    Provider<FeedbackRepository>((ref) => FeedbackRepositoryAPI(ref.read));

final internalStorageProvider = Provider<InternalStorageRepository>(
    (ref) => InternalStorageRepositoryAPI());
