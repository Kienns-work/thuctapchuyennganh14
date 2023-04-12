import 'package:flutter/material.dart';

class ColorPalette {
  static const Color primaryColor = Color(0xff1EB158);
  static const Color redColor = Color(0xffEE3240);
  static const Color yellowColor = Color(0xffFDB717);
  static const Color blueColor = Color(0xff14A9E1);
  static const Color violetColor = Color(0xffA04799);
  static const Color dividerColor = Color(0xffE5E7EB);
  static const Color textColor = Color(0xff323B48);
}

class Gradients {
  static const Gradient defaultGradientBackground = LinearGradient(
    begin: Alignment.bottomRight,
    end: Alignment.topCenter,
    colors: [ColorPalette.dividerColor, ColorPalette.primaryColor],
  );
}
