import 'package:fitqa/theme/color.dart';
import 'package:fitqa/widget/LabeledCheckbox.dart';
import 'package:fitqa/widget/filter_chip_bar.dart';
import 'package:fitqa/widget/fitqa_appbar.dart';
import 'package:flutter/material.dart';

class ScreenRequest extends StatelessWidget {
  const ScreenRequest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: FColors.appBackground,
        appBar: FAppbar('글쓰기'),
        body: Padding(
            padding: const EdgeInsets.all(8),
            child: Card(
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: ListView(children: const [
                      Center(
                          child: Text(
                        '새 게시물쓰기',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      )),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(),
                      RequestForm()
                    ])))),
      ),
    );
  }
}

class RequestForm extends StatefulWidget {
  const RequestForm({Key? key}) : super(key: key);

  @override
  _RequestFormState createState() => _RequestFormState();
}

class _RequestFormState extends State<RequestForm> {
  final _formKey = GlobalKey<FormState>();
  final double spacing = 32;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(
            height: spacing,
          ),
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              labelText: '제목',
              hintText: '예시) 벤치를 할 때 팔꿈치가 아픕니다',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          SizedBox(
            height: spacing,
          ),
          TextFormField(
            maxLines: 5,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelText: '게시글 내용',
                hintText: '예시) 안녕하세요, 운동 n년차 바디빌딩 헬린이입니다. 중량이 올라가면서 팔꿈치가 많이 아픕니다.'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          SizedBox(
            height: spacing,
          ),
          FilterChipBar(items: ['#하체', '#등', '#가슴', '#어깨', '#팔']),
          ElevatedButton(
            onPressed: () {},
            child: const Text('트레이너 선택하기'),
          ),
          SizedBox(
            height: spacing,
          ),
          Text('결제금액 : 11,000원'),
          SizedBox(
            height: spacing,
          ),
          LabeledCheckbox(label: '게시글 비공개로 하기', onChanged: (v) => {}),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text('processing Data')));
              }
            },
            child: const Text('결제하고 글쓰기'),
          ),
        ],
      ),
    );
  }
}
