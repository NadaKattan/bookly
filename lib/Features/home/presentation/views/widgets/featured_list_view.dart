import 'package:bookly/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../book_details_view.dart';

class FeaturedListView extends StatelessWidget {
  FeaturedListView({this.padding=16,super.key});
  double padding;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsetsDirectional.only(start: padding),
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) =>
          InkWell(
            onTap: () {
              Get.to(() => const BookDetailsView(),
                  duration: const Duration(milliseconds: 500),
                  transition: Transition.fade);
            },
            child: CustomBookItem(ratio: 1.2 / 2),
          ),
    );
  }
}

