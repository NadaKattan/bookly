import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../../../../search/presentation/views/search_view.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Image.asset(
        Assets.logo,
        height: 20,
      ),
      InkWell(
          onTap: () {
            Get.to(() => const SearchView(),
                duration: const Duration(milliseconds: 500),
                transition: Transition.fade);
          },
          child: Image.asset(Assets.search)),
    ]);
  }
}
