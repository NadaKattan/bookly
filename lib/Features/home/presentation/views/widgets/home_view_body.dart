import 'package:bookly/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'best_seller_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(kPadding),
                child: CustomAppBar(),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.28,
                child: const FeaturedListView(),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.symmetric(horizontal: kPadding),
                child: Column(
                  children: [
                    Text(
                      "Best Seller",
                      style: Styles.textStyle18.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: ListView.builder(
            shrinkWrap: true,
            physics:const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: kPadding),
            itemBuilder: (context, index) => const BestSellerItem(),
            itemCount: 10,
          ),
        )
      ],
    );
  }
}


