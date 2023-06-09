import 'dart:ffi';

import 'package:bookinghotel/core/constants/colors_constants.dart';
import 'package:bookinghotel/core/constants/dimension_constants.dart';
import 'package:bookinghotel/core/constants/textstyle_constants.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget(
      {super.key, required this.title, required this.ontap, this.color});

  final String title;
  final Function ontap;
  Color? color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => ontap(),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
            vertical: kMediumPadding / 2, horizontal: kMediumPadding),
        decoration: BoxDecoration(
          color: color ?? ColorPalette.primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyles.defaultStyle.whiteTextColor.bold,
        ),
      ),
    );
  }
}
