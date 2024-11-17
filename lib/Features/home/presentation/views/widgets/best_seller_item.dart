import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import '../book_details_view.dart';
import 'book_rating.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => const BookDetailsView(),
            duration: const Duration(milliseconds: 500),
            transition: Transition.fade);
      },
      child: Container(
        height: 130,
        margin: const EdgeInsets.only(bottom: 10),
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 1.7 / 2,
              child: Container(
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
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Harry Potter and the Goblet of Fire",
                    style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Opacity(
                      opacity: 0.7,
                      child: Text("J.K. Rowling",style: Styles.textStyle14)),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("19.99 €",style: Styles.textStyle20,),
                        BookRating(),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

