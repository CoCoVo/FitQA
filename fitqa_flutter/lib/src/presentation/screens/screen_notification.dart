import 'package:fitqa/src/domain/entities/common/enum/notification_type.dart';
import 'package:fitqa/src/presentation/widgets/common/fitqa_appbar_notification.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';

class ScreenNotification extends StatelessWidget {
  const ScreenNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FitqaAppbarNotification(),
            NotiBox('2022.04.13 (수)'),
            NotiBox('2022.04.12 (화)'),
            NotiBox('2022.04.11 (월)'),
          ],
        ),
      ],
    );
  }
}

class NotiBox extends StatelessWidget {
  String _date;
  NotiBox(this._date);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _date,
            style: const TextStyle(fontWeight: FontWeight.w700),
          ),
          const Divider(
            thickness: 1.0,
            height: 14.0,
            color: FColors.grey_3,
          ),
          NofiBoxDateRow('강이록', '1', NotiType.likey),
          NofiBoxDateRow('강이록', '2', NotiType.comment),
          NofiBoxDateRow('강이록', '3', NotiType.feedback),
        ],
      ),
    );
  }
}

Widget NofiBoxDateRow(String _userName, String _time, NotiType _notiType) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Row(
      children: [
        const CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage('images/default_profile.jpg'),
        ),
        const SizedBox(width: 20.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: _userName,
                  style: const TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                  children: [
                    TextSpan(
                      text: _notiType.toStringType(),
                      style: const TextStyle(
                          color: FColors.black, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
              Text(
                '$_time시간전',
                style: const TextStyle(color: FColors.grey_3, fontSize: 12),
              )
            ],
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.chevron_right),
          color: FColors.blue,
        )
      ],
    ),
  );
}
