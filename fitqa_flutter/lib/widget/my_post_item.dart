import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

const String trainerImageURL = 'https://cdn.pixabay'
    '.com/photo/2013/07/13/10/07/man-156584_960_720.png';

const String postThumbnailURL = 'https://images.unsplash'
    '.com/photo-1461749280684-dccba630e2f6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2069&q=80';

const double postThumbnailSize = 100;
const double itemHieght = 120;

class MyPostItem extends StatelessWidget {
  const MyPostItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: itemHieght,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(8)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.6),
              blurRadius: 2,
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildThumbnail(),
          buildContent(
              title: "데드리프트 299kg 언제 도달하나요",
              detail: "헬스 15년차 헬창입니다."
                  " 데드리프트 300찍는 길이 블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라",
              date: DateTime(2021, 12, 01, 13, 10, 10),
              price: 11500)
        ],
      ),
    );
  }

  Widget buildThumbnail() => Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: InkWell(
          onTap: () {
            print('onclicked');
          },
          child: SizedBox(
            height: postThumbnailSize,
            width: postThumbnailSize,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(postThumbnailURL, fit: BoxFit.cover),
            ),
          )));

  Widget buildContent(
      {required String title,
      required String detail,
      required DateTime date,
      required int price}) {
    String formattedDate = DateFormat('yyyy/MM/dd (E)').format(date);
    String formattedPrice =
        NumberFormat.simpleCurrency(locale: "ko_KR", name: "", decimalDigits: 0)
            .format(price);
    return Flexible(
        fit: FlexFit.tight,
        child: Padding(
          padding: EdgeInsets.only(top: 5, bottom: 5, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                softWrap: false,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
              ),
              Text(
                detail,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                softWrap: false,
                style: TextStyle(fontSize: 12),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Text(
                    "답변완료",
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
