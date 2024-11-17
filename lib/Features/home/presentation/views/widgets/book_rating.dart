import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Icon(
          Icons.star_rate,
          size: 18,
          color: Color(0xffFFDD4F),
        ),
        Row(children: [
          Text("4.8",style: Styles.textStyle16,),
          Opacity(
              opacity: 0.7,
              child: Text("(2390)",style: Styles.textStyle14,)),
        ],
        ),
      ],
    );
  }
}