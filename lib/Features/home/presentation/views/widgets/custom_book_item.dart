import 'package:flutter/material.dart';
import '../../../../../core/utils/assets.dart';

class CustomBookItem extends StatelessWidget {
  CustomBookItem({required this.ratio, super.key});
  double ratio;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: ratio,
      child: Container(
        // height: 100,
        // width: 50,
        margin: const EdgeInsetsDirectional.only(end: 12),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          image: DecorationImage(
            image: AssetImage(Assets.book),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
