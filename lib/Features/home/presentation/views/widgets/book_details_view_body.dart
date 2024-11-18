import 'package:bookly/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/Features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../../../../../core/utils/styles.dart';
import '../home_view.dart';
import 'custom_book_item.dart';
import 'custom_button.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPadding),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        Get.to(() => const HomeView(),
                            duration: const Duration(milliseconds: 500),
                            transition: Transition.fade);
                      },
                    ),
                    Icon(Icons.shopping_cart_outlined),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: MediaQuery.sizeOf(context).height * 0.3,
                  child: CustomBookItem(ratio: 1.7 / 2.5),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "The Jungle Book",
                  style:
                      Styles.textStyle30.copyWith(fontWeight: FontWeight.w400),
                ),
                Opacity(
                    opacity: 0.7,
                    child: Text(
                      "Rudyard Kipling",
                      style: Styles.textStyle18
                          .copyWith(fontWeight: FontWeight.w400),
                    )),
                const SizedBox(
                  height: 5,
                ),
                BookRating(
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                      text: "19.99€",
                      bgColor: Colors.white,
                      txtColor: Colors.black,
                    ),
                    CustomButton(
                      text: "Free preview",
                      bgColor: const Color(0xffEF8262),
                      isLeft: false,
                      txtColor: Colors.white,
                    ),
                  ],
                ),
                const Expanded(
                  child: SizedBox(
                    height: 30,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      "You can also like",
                      style: Styles.textStyle14,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.25,
                      child: FeaturedListView(
                        padding: 0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
