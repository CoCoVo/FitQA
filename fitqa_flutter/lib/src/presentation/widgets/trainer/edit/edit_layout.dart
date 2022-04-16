import 'package:fitqa/src/presentation/widgets/common/fitqa_elevated_button.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:fitqa/src/theme/dimen.dart';
import 'package:flutter/material.dart';

class EditLayout extends StatelessWidget {
  const EditLayout({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: FColors.white,
      padding: const EdgeInsets.fromLTRB(16, 40, 16, 16),
      child: Column(
        children: [...children, _buildBottomAction()],
      ),
    );
  }

  Widget _buildBottomAction() {
    return Flexible(
      fit: FlexFit.tight,
      child: Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            children: [
              Expanded(
                child: FElevatedButton(
                  onPressed: () => {},
                  child: const Text("나가기",
                      style: TextStyle(
                          fontSize: 16,
                          height: 1.25,
                          fontWeight: FontWeight.w400,
                          color: FColors.grey_3)),
                  background: FColors.grey_5,
                  borderColor: FColors.grey_6,
                  borderRadius: 3,
                  minSize: const Size(0, FDimen.trainerEditBottomButtonHeight),
                  elevation: 0,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: FElevatedButton(
                  onPressed: () => {},
                  child: const Text("저장",
                      style: TextStyle(
                          fontSize: 16,
                          height: 1.25,
                          fontWeight: FontWeight.w700,
                          color: FColors.white)),
                  background: FColors.blue,
                  borderRadius: 3,
                  minSize: const Size(0, FDimen.trainerEditBottomButtonHeight),
                  elevation: 0,
                ),
              ),
            ],
          )),
    );
  }
}
