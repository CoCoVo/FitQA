import 'package:fitqa/src/application/storage/user_token_facade.dart';
import 'package:fitqa/src/presentation/screens/screen_user_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String userToken = ref.watch(userTokenProvider);

    return MaterialApp(
      title: 'FitQA',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: userToken.isEmpty ? ScreenLogin() : Home(),
      home: ScreenUserInfo(),
    );
  }
}
