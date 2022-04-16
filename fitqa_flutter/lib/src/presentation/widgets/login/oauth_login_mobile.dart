import 'package:fitqa/src/application/storage/user_token_facade.dart';
import 'package:fitqa/src/presentation/widgets/login/social_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webview_flutter/webview_flutter.dart';

class OAuthLoginMobile extends ConsumerWidget {
  OAuthLoginMobile(
      {Key? key, required this.baseURL, required this.socialProvider})
      : super(key: key);

  String baseURL;
  SocialProvider socialProvider;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userTokenController = ref.watch(userTokenProvider.notifier);

    return Scaffold(
      body: WebView(
          initialUrl: "$baseURL/${socialProvider.toProviderString}",
          javascriptMode: JavascriptMode.unrestricted,
          onPageFinished: (String url) {
            final attemptResult = url.split("/").last;
            if (attemptResult.startsWith("success")) {
              final userToken = attemptResult.split("=").last;
              print("User Token : $userToken");
              userTokenController.state = userToken;
              _closeScreen(context);
            } else if (attemptResult.startsWith("failed")) {
              print("User Login Failed");
              _closeScreen(context);
            } else {
              // TODO : need redirect url control.
            }
          }),
    );
  }

  void _closeScreen(BuildContext context) {
    Navigator.pop(context);
  }
}
