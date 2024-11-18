import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  BookRating({this.mainAxisAlignment, super.key});
  MainAxisAlignment? mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
      children: const [
        Icon(
          Icons.star_rate,
          size: 18,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 5,
        ),
        Row(
          children: [
            Text(
              "4.8",
              style: Styles.textStyle16,
            ),
            const SizedBox(
              width: 5,
            ),
            Opacity(
              opacity: 0.7,
              child: Text(
                "(2390)",
                style: Styles.textStyle14,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
