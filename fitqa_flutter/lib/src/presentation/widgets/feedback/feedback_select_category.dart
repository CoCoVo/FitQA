import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';

class FeedbackSelectCategory extends StatelessWidget {
  FeedbackSelectCategory({Key? key}) : super(key: key);

  static const String mockTrainerImage = 'https://s3-alpha-sig.figma'
      '.com/img/2fcf/66ec/a2b468ff9efd9deb5575b35988aee23a?Expires=1649635200&Signature=VJfVUGc-ZVnUJUTTs~vfTPaqtAo1pfde8-D8ccx2JpUNAzhFvQMU9CsJiB~2J2IXVxl-AwNP2m2GdeIZ7mbLH88Dwly2yQFlWZ874w80mVpXyco6O~ZXeQqw9QBwQ0x1mN2e3yt-XhH76zMBHXY95yTyv03FLSuAkPyIvTvZI~L6PXKMudxQf9sCoUxePjfxUi6f2wwVddtjekMiDKb8dnQhXtvb2gra64JIz49vb5tOYZLzVovnSQtqZdZyaJERT~Sr6LeHyKOJ25sAMBxaSri6q1uAfOkvjgVQIwfxSoBN7nVVMGrfdZkFzcqkJi1JIHtLae8EliMz7aL3BhZ3Wg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.only(left: 16, right: 16, top: 24, bottom: 14),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(
                  mockTrainerImage,
                  width: 85,
                  height: 85,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                        text: "강경원",
                        style: TextStyle(
                            fontSize: 18,
                            color: FColors.black,
                            fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                              text: " 트레이너",
                              style: TextStyle(fontWeight: FontWeight.normal)),
                        ]),
                  ),
                ],
              )
            ],
          ),
          const Divider(),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "결제금액",
                  style: TextStyle(fontSize: 14, color: FColors.black),
                ),
                RichText(
                    text: TextSpan(
                        text: "11,000",
                        style: TextStyle(
                            fontSize: 24,
                            color: FColors.black,
                            fontWeight: FontWeight.bold),
                        children: [
                      TextSpan(
                          text: " 원",
                          style: TextStyle(fontWeight: FontWeight.normal))
                    ])),
              ],
            ),
          )
        ],
      ),
    );
  }
}
