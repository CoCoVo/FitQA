import 'package:dio/dio.dart';

class DataException implements Exception {
  DataException({required this.message});

  String message = "";

  DataException.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.cancel:
        message = "errorCancelled";
        break;
      case DioErrorType.connectTimeout:
        message = "errorConnectTimeout";
        break;
      case DioErrorType.receiveTimeout:
        message = "errorReceiveTimeout";
        break;
      case DioErrorType.response:
        message = _handleError(dioError.response!.statusCode!);
        break;
      case DioErrorType.sendTimeout:
        message = "errorSendTimeout";
        break;
      default:
        message = "errorInternetConnection";
        break;
    }
  }

  String _handleError(int statusCode) {
    switch (statusCode) {
      case 400:
        return "errorBadRequest";
      case 404:
        return "errorRequestNotFound";
      case 500:
        return "errorInternalServer";
      default:
        return "errorSomething";
    }
  }
}