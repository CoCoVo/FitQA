import 'package:flutter/material.dart';

const String cardImageURL = 'https://images.unsplash'
    '.com/photo-1461749280684-dccba630e2f6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2069&q=80';

const double cardSmartIconSize = 5;

const int cardFavoriteNum = 123;

class MyFavoriteTrainerItem extends StatelessWidget {
  const MyFavoriteTrainerItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: buildCard(),
    );
  }

  Widget buildCard() {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: InkWell(
          onTap: () {},
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              buildCardImage(),
              const SizedBox(height: 5),
              buildCardContent(),
              const SizedBox(height: 5),
              buildCardAction(),
              const SizedBox(height: 10),
            ],
          ),
        ));
  }

  Widget buildCardImage() => Flexible(
        fit: FlexFit.tight,
        child: Image.network(cardImageURL,
            width: double.infinity, fit: BoxFit.cover),
      );

  Widget buildCardContent() => Row(
        children: [
          const Expanded(
            child: SizedBox(),
          ),
          const Expanded(
              child: Align(
                  alignment: Alignment.center,
                  child: Text("흑자",
                      style: TextStyle(
                          fontSize: 13, fontWeight: FontWeight.bold)))),
          Expanded(
              child: Align(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Icon(Icons.favorite_border_outlined, size: cardSmartIconSize),
                SizedBox(width: 10),
                Text('${cardFavoriteNum}'),
                SizedBox(width: 10),
              ],
            ),
          ))
        ],
      );

  Widget buildCardAction() =>
      OutlinedButton(onPressed: () {}, child: const Text('운동 평가 받기'));
}
