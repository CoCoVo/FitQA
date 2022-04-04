import 'package:fitqa/src/presentation/widgets/common/small_info_box.dart';
import 'package:fitqa/src/presentation/widgets/trainer/area_small_widget.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FeedbackListViewItem extends StatelessWidget {
  FeedbackListViewItem({Key? key, required this.complete, this.locked = false})
      : super(key: key);

  bool complete;
  bool locked;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        height: 72,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildThumbnailImage(),
            SizedBox(width: 16),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Visibility(
                      visible: !locked,
                      child: Text(
                        "비공개 게시글입니다.",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 16),
                      ),
                      replacement: Text(
                        "비공개 게시글입니다.",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 16, color: FColors.grey_3),
                      ),
                    ),
                    Row(
                      children: [
                        Visibility(
                          visible: !locked,
                          child: AreaSmallWidget("비공개"),
                        ),
                        Visibility(
                          visible: !locked,
                          child: SizedBox(
                            width: 6,
                          ),
                        ),
                        Visibility(
                          visible: !locked,
                          child: Text(
                            "운동조아",
                            style: TextStyle(
                                color: FColors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          replacement: Text(
                            "비공개",
                            style: TextStyle(
                                color: FColors.grey_3,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "2022.03.15",
                          style: TextStyle(color: FColors.grey_4, fontSize: 10),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: SmallInfoBox(
                text: "답변대기",
                outlined: !complete,
              ),
            )
          ],
        ));
  }

  Widget _buildThumbnailImage() {
    return Container(
      color: FColors.grey_2,
      height: 71,
      width: 71,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: SvgPicture.asset("images/lock.svg"),
        ),
      ),
    );
  }
}
