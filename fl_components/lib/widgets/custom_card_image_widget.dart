import 'package:flutter/material.dart';

class CustomCardImageWidget extends StatelessWidget {
  final String imageUrl;
  final String? imagePlaceHolder;

  const CustomCardImageWidget({
    Key? key,
    required this.imageUrl,
    this.imagePlaceHolder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if (imagePlaceHolder != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(imagePlaceHolder!),
            )
        ],
      ),
    );
  }
}
