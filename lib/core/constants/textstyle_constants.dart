import 'package:google_fonts/google_fonts.dart';

import 'colors_constants.dart';
import 'package:flutter/material.dart';

class TextStyles {
  BuildContext context;
  TextStyles(this.context);

  static const TextStyle defaultStyle = TextStyle(
    color: ColorPalette.textColor,
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );

  static TextStyle introTitleStyle = GoogleFonts.fasthand(
    color: ColorPalette.primaryColor,
    fontWeight: FontWeight.bold,
    fontSize: 40,
  );
}

extension ExtendedTextStyle on TextStyle {
  TextStyle get light {
    return copyWith(fontWeight: FontWeight.w300);
  }

  TextStyle get regular {
    return copyWith(fontWeight: FontWeight.w400);
  }

  TextStyle get bold {
    return copyWith(fontWeight: FontWeight.bold);
  }

  TextStyle get italic {
    return copyWith(
      fontWeight: FontWeight.normal,
      fontStyle: FontStyle.italic,
    );
  }

  TextStyle get primaryTextColor {
    return copyWith(color: ColorPalette.primaryColor);
  }

  TextStyle get whiteTextColor {
    return copyWith(color: Colors.white);
  }

  TextStyle get subTitleTextColor {
    return copyWith(color: Colors.grey);
  }
}
