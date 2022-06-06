import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScreenMyPageLogin extends ConsumerWidget {
  const ScreenMyPageLogin({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: Column(
        children: [
          const SizedBox(
            height: 20.0,
          ),
          const Text(
            '로그인하고 FitQA의 \n모든 서비스를 이용해보세요.',
            textAlign: TextAlign.center,
            style: TextStyle(color: FColors.grey_3),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
            child: Row(children: [
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        side: const BorderSide(color: FColors.grey_3),
                      ),
                    ),
                  ),
                  child: const Text(
                    '회원가입하기',
                  ),
                  onPressed: () {
                    Navigator.popAndPushNamed(context, '/Login');
                  },
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
