import 'package:fitqa/src/presentation/widgets/feedback/register/feedback_category_dropdown.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';

class FeedbackSelectCategory extends StatelessWidget {
  FeedbackSelectCategory({Key? key}) : super(key: key);

  static const String mockTrainerImage =
      'https://s3-alpha-sig.figma.com/img/ac38/00a5/1cb4dbc07970132c01ccc8b55649cc22?Expires=1650240000&Signature=WSANSa25hl~H~zYLc2GvPIcrlyjlRXEQoI7tNF7ontrb9a7iD93fTFP8JMeVzhH3z7t0NCC6OLaWmRufte~Ea4FsAlP~mRbECbRS~mG1zP-npoQJbtTaC5ZDsgShn-C60MPVssnqWU-v8vgTodXboM~LVzxY1tD7kcn0SpVlrGnW3NNRtfCWUNpL4BOBxge4ykjxY-vS8rg5yGhDY-7OJe6O8IqvgGaIGhrwdwk4yPmGN2rVvzq9vsgN5W1E6caSedlSqrX7QNIWjt7N6C4A8Kupg0J8ziB07kpJbWQVaq~P2-12TGt88bvdt7Pf2U7Qb-EQkIKr4yizf~oXsEjUnQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA';

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
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: const TextSpan(
                          text: "강경원",
                          style: TextStyle(
                              fontSize: 18,
                              color: FColors.black,
                              fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                                text: " 트레이너",
                                style:
                                    TextStyle(fontWeight: FontWeight.normal)),
                          ]),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    FeedbackCategoryDropdown()
                  ],
                ),
              )
            ],
          ),
          const Divider(),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "결제금액",
                  style: TextStyle(fontSize: 14, color: FColors.black),
                ),
                RichText(
                    text: const TextSpan(
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
