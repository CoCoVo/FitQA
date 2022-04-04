import 'package:flutter/material.dart';

class FeedbackCollapsedAppbar extends StatelessWidget {
  const FeedbackCollapsedAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 200,
          child: AppBar(
            title: Text(
              '새 게시물 쓰기',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            elevation: 0.0,
            leading: InkWell(
              child: Icon(Icons.arrow_back_ios_rounded),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Container(
            height: 200,
            child: Card(
              child: Center(
                child: Text("asdf"),
              ),
              margin: EdgeInsets.symmetric(horizontal: 16),
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
              clipBehavior: Clip.antiAlias,
            ),
          ),
        )
      ],
    );
  }
}
