import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// A Counter example implemented with riverpod

void main() {
  runApp(
    /// 1. 최상위에 ProviderScope를 지정하여 project 전반에 프로바이더 선언/접근을 가능하게 한다
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}

///2. globally하게 Providers 선언, how to create a state를 구체화, ref(int)에 초기값 지정
final counterProvider = StateProvider((ref) => 0);

/// 3. ConsumerWidget 을 extends
class Home extends ConsumerWidget {
  /// 4. build 메소드에 WidgetRef ref 인자 추가
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter example')),
      body: Center(
        /// 5. Consumer 위젯 안에서 providers reading 가능하도록 설정.
        child: Consumer(builder: (context, ref, _) {
          /// watch 메소드를 통해 값을 연결해서 변경여부를 주시하게 함 (변경 발생시 Rebuild)
          final count = ref.watch(counterProvider.state).state;
          return Text('$count');
        }),
      ),
      floatingActionButton: FloatingActionButton(
        /// + Read 메소드를 통해 값을 셋팅
        onPressed: () => ref.read(counterProvider.state).state++,
        child: const Icon(Icons.add),
      ),
    );
  }
}
