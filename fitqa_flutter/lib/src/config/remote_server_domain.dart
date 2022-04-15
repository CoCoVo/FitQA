import 'package:flutter/foundation.dart';

class RemoteServerDomain {
  static const String oauthBaseURL =
      "http://118.220.102.116:8080/oauth2/authorization";

  static const String localhost = (kIsWeb) ? '127.0.0.1' : '10.0.2.2';
  static const String localFitQA = 'http://$localhost:8080/api/v1';
}
