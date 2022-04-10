import 'package:cached_network_image/cached_network_image.dart';
import 'package:fitqa/src/theme/dimen.dart';
import 'package:flutter/material.dart';

class TrainerCardImage extends StatelessWidget {
  const TrainerCardImage({Key? key, required this.imageUrl}) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      fit: FlexFit.tight,
      child: CachedNetworkImage(
          imageUrl: imageUrl,
          placeholder: (context, url) => const CircularProgressIndicator(),
          errorWidget: (context, url, error) => const Icon(Icons.error),
          height: FDimen.trainerCardImageSize,
          fit: BoxFit.fill),
    );
  }
}
