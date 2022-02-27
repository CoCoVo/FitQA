import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

const String trainerImageURL = 'https://cdn.pixabay'
    '.com/photo/2013/07/13/10/07/man-156584_960_720.png';

const double trainerProfileHeight = 20;
const double itemHieght = 90;

const List<String> trainerList = ['흑자헬스', '강경원', '허인', '몸짱'];

class MyLogItem extends StatelessWidget {
  const MyLogItem({Key? key}) : super(key: key);

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
          buildTrainerProfile(imageURL: trainerImageURL, name: "흑자헬스"),
          buildContent(
              title: "데드리프트 299kg 언제 도달하나요",
              detail: "헬스 15년차 헬창입니다."
                  " 데드리프트 300찍는 길이 블라블라블라블라블라블라블라블라블라블라",
              date: DateTime(2021, 12, 01, 13, 10, 10),
              price: 11500)
        ],
      ),
    );
  }

  Widget buildTrainerProfile(
          {required String imageURL, required String name}) =>
      Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: trainerProfileHeight,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(imageURL),
              ),
              SizedBox(height: 5),
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
              )
            ],
          ));

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
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                softWrap: false,
                style: TextStyle(fontSize: 12),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    formattedDate,
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  SizedBox(width: 5),
                  Text(
                    '${formattedPrice}원',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
