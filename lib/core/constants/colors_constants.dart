import 'package:flutter/material.dart';

class ColorPlette {
  static const Color primaryColor = Color(0xff365485);
  static const Color secondColor = Color(0xffADCCDD);
  static const Color yellowColor = Color(0xffDDB69B);

  static const Color dividerColor = Color(0xffE5E7EB);
  static const Color textColor = Color(0xff323B48);
}

class Gradients {
  static const Gradient defaultGradientBackground = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomLeft,
    colors: [
      ColorPlette.primaryColor,
      ColorPlette.secondColor,
    ],
  );
}
