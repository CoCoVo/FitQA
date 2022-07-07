import 'package:fitqa/src/application/storage/trainer_token_facade.dart';
import 'package:fitqa/src/application/storage/user_token_facade.dart';
import 'package:fitqa/src/domain/entities/common/enum/workout_area.dart';
import 'package:fitqa/src/domain/entities/feedback/fitqa_feedback/fitqa_feedback.dart';
import 'package:fitqa/src/presentation/widgets/common/area_small_widget.dart';
import 'package:fitqa/src/presentation/widgets/common/small_info_box.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class FeedbackListViewItem extends ConsumerWidget {
  FeedbackListViewItem({
    Key? key,
    required this.feedback,
    this.complete = false,
    this.onPressed,
  }) : super(key: key);

  FitqaFeedback feedback;
  Function()? onPressed;
  bool complete;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String userToken = ref.watch(userTokenProvider);
    String trainerToken = ref.watch(trainerTokenProvider);

    return InkWell(
      onTap: _isLocked(userToken, trainerToken, feedback) ? null : onPressed,
      child: Container(
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
                        visible: !_isLocked(userToken, trainerToken, feedback),
                        child: Text(
                          feedback.title,
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
                            visible:
                            !_isLocked(userToken, trainerToken, feedback),
                            child: Text(
                              "20대/보디빌딩/초보자",
                              style: TextStyle(
                                  color: FColors.blue,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                            replacement: Text(" "),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Visibility(
                            visible:
                            !_isLocked(userToken, trainerToken, feedback),
                            child: AreaSmallWidget(
                                feedback.interestArea.toStringType(),
                                textColor: FColors.black,
                                backgroundColor: FColors.white,
                                borderColor: FColors.black),
                          ),
                          Visibility(
                            visible:
                            !_isLocked(userToken, trainerToken, feedback),
                            child: SizedBox(
                              width: 6,
                            ),
                          ),
                          Visibility(
                            visible:
                            !_isLocked(userToken, trainerToken, feedback),
                            child: Text(
                              feedback.owner.name,
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
                            DateFormat("yyyy.MM.dd").format(feedback.createdAt),
                            style:
                            TextStyle(color: FColors.grey_4, fontSize: 10),
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
                  text: feedback.status.toStringType(),
                  outlined: feedback.status == FeedbackStatus.prepare,
                ),
              )
            ],
          )),
    );
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

  bool _isLocked(
      String userToken, String trainerToken, FitqaFeedback feedback) {
    // 1. 현재 사용자랑 feedback owner 가 같으면 false.
    if (userToken == feedback.owner.userToken) return false;

    // 2. 현재 사용자가 feedback trainer 와 같으면 false.
    if (trainerToken == feedback.trainer.trainerToken) return false;

    // 3. feedback 이 locked 이면 true.
    if (feedback.locked) return true;

    return false;
  }
}
