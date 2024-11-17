import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Image.asset(
        Assets.logo,
        height: 20,
      ),
      Image.asset(Assets.search),
    ]);
  }
}