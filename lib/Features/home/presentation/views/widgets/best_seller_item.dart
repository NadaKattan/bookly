import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/utils/styles.dart';
import '../book_details_view.dart';
import 'book_rating.dart';
import 'custom_book_item.dart';

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
            CustomBookItem(ratio: 1.7 / 2),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Harry Potter and the Goblet of Fire",
                    style: Styles.textStyle20
                        .copyWith(fontWeight: FontWeight.bold),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Opacity(
                      opacity: 0.7,
                      child: Text("J.K. Rowling", style: Styles.textStyle14)),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "19.99 €",
                          style: Styles.textStyle20,
                        ),
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
