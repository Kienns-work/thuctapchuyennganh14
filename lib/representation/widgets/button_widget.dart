import 'package:bookinghotel/core/constants/colors_constants.dart';
import 'package:bookinghotel/core/constants/dimension_constants.dart';
import 'package:bookinghotel/core/constants/textstyle_constants.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, required this.title, required this.ontap});

  final String title;
  final Function ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => ontap(),
      child: Container(
        padding: const EdgeInsets.symmetric(
            vertical: kMediumPadding / 3, horizontal: kMediumPadding),
        decoration: BoxDecoration(
          color: ColorPlette.primaryColor,
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
