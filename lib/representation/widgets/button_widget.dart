import 'package:bookinghotel/core/constants/textstyle_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, required this.title, this.ontap});

  final String title;
  final Function? ontap;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        title,
        style: TextStyles.defaultStyle,
      ),
    );
  }
}
