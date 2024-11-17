import 'package:bookly/Features/home/presentation/views/widgets/home_view_body.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.symmetric(horizontal: kPadding),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.close),
                Icon(Icons.shopping_cart_outlined),
              ],
            )
          ],
        ),
        )
      ],
    );
  }
}
