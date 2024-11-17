import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../book_details_view.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsetsDirectional.only(start: 16),
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) =>
          InkWell(
            onTap: () {
              Get.to(() => const BookDetailsView(),
                  duration: const Duration(milliseconds: 500),
                  transition: Transition.fade);
            },
            child: AspectRatio(
                    aspectRatio: 1.2 / 2,
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
                  ),
          ),
    );
  }
}
