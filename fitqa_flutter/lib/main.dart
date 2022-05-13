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
        theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'text'),
        home: _firstScreen(userToken));
  }

  Widget _firstScreen(String userToken) {
    //if (userToken.isEmpty) return ScreenLogin();

    return ScreenUserInfo();
    // 원래라면 처음 들어오는 사용자만 ScreenUserInfo 가 보여야 하지만
    // 지금은 디자인을 본다는 의미에서 무조건 ScreenUserInfo 로 가도록 함.
    // 대신 뒤로가기를 누르면 Home 으로 연결되도록 함
    // (트레이너도 이 화면이 나타나면 안됨)
    // return Home();
  }
}
