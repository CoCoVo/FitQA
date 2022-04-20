import 'package:flutter/foundation.dart';

class RemoteServerDomain {
  static const String localhost = (kIsWeb) ? '127.0.0.1' : '10.0.2.2';
  static const String remoteHost =
      "ec2-15-164-241-17.ap-northeast-2.compute.amazonaws.com";

  static const String host = remoteHost;
  static const String fitqaApiUrl = 'http://$host:8080/api/v1';

  static const String oauthBaseURL = "http://$host:8080/oauth2/authorization";
}
