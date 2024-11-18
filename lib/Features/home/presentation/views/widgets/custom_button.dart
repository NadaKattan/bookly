import 'dart:core';

import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({required this.text,required this.txtColor, required this.bgColor,this.isLeft=true,super.key});
  final bool isLeft;
  final String text;
  final Color bgColor;
  final Color txtColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      overlayColor: WidgetStateProperty.all(Colors.transparent),
      onTap: (){

      },
      child: Container(
        // padding:const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        width: 150,
        height: 48,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius:isLeft?const BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)):const BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20)),
        ),
        child: Text(text,style: Styles.textStyle16.copyWith(color: txtColor),),
      ),
    );
  }
}
