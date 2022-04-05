import 'package:fitqa/src/theme/dimen.dart';
import 'package:flutter/material.dart';

const String mockTrainerImage_2 =
    'https://s3-alpha-sig.figma.com/img/ac38/00a5/1cb4dbc07970132c01ccc8b55649cc22?Expires=1649635200&Signature=E3ScKCZzktmHyUsEHdyo5mSp3FgNDyiO9coAlhATxbSk5xmc2P5f5TZ4L2QgRdrgsDJcvPNB0WyvtUXUJeQO8iQ8oclyd80oAyrOjePQv5nBmqvcbUcFWpCzw0~KYyzKpKFnzWM8m8dLa9VNd9zwXeDbPyR3rVHzsM41EXJq11akS~aoZiLKi4xIMxg~VmLXUrwY3E4~YryMJFBjgzsoMBJCIShlAa6jP1SJNOuSaOuEuFube9y8j-J32rHrs4peDJ8fvF5biGEjnq1AfNwHPsdq3XmNyZ~PHxLoip7jfth8sSkDQd8V~pULsF6WNkwMgbn9IhNDx1ep5CKQljCUxQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA';

class TrainerIntroduce extends StatelessWidget {
  const TrainerIntroduce({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 60, horizontal: 35),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Image.network(mockTrainerImage_2,
                fit: BoxFit.cover,
                height: FDimen.trainerDetailIntroduceImageSize,
                width: FDimen.trainerDetailIntroduceImageSize),
          ),
          SizedBox(height: 22),
          Text(
            "안녕하세요~ 트레이너 강경원입니다.",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 22),
          Text(
              "우리가 하는 운동들은 움직임이라는 것을 기반으로 이루어집니다.\n이 움직임을 이해하지 못하면 운동 효율, "
              "퍼포먼스가 나오지 않으며 부상으로 이루어질 수 있습니다.\n\n올바른 움직임을 가이드로 통증없이 부상없이 "
              "훨씬 더 큰 효율을 내는 운동을 가르쳐드리겠습니다.",
              style: TextStyle(fontSize: 16, height: 1.5)),
        ],
      ),
    );
  }
}
