import 'package:flutter/material.dart';

const String cardImageURL = 'https://images.unsplash'
    '.com/photo-1461749280684-dccba630e2f6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2069&q=80';

class MyGalleryItem extends StatelessWidget {
  const MyGalleryItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildImage();
  }

  Widget buildImage() {
    return InkWell(
      onTap: () {
        print('onclicked');
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.network(cardImageURL,
            width: double.infinity, fit: BoxFit.cover),
      ),
    );
  }
}
