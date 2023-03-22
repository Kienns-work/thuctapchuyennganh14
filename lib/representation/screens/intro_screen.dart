import 'package:bookinghotel/core/constants/colors_constants.dart';
import 'package:bookinghotel/core/constants/dimension_constants.dart';
import 'package:bookinghotel/core/constants/textstyle_constants.dart';
import 'package:bookinghotel/core/data/data_intro.dart';
import 'package:bookinghotel/core/helpers/asset_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../core/helpers/image_helper.dart';

class IntroScreen extends StatefulWidget {
  IntroScreen({super.key});
  static const String routeName = '/intro_screen';

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
              controller: _pageController,
              children: dataIntro
                  .map(
                    (e) => buildItemIntroScreen(
                      e['image'],
                      e['title'],
                      e['description'],
                      e['shape'],
                    ),
                  )
                  .toList()),
          Positioned(
            left: kDefaultPadding,
            bottom: kDefaultPadding * 3,
            child: Row(
              children: [
                SmoothPageIndicator(
                  effect: const ExpandingDotsEffect(
                    dotWidth: 5,
                    dotHeight: 5,
                    activeDotColor: ColorPlette.primaryColor,
                  ),
                  controller: _pageController,
                  count: 3,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget buildItemIntroScreen(Widget image, String title, String description,
    CustomClipper<Path> clipper) {
  return Column(
    children: [
      ClipPath(
        clipper: clipper,
        child: Container(
          height: 500,
          decoration: const BoxDecoration(
            color: ColorPlette.primaryColor,
          ),
          child: image,
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          children: [
            Text(
              title,
              style: TextStyles.introTitleStyle,
            ),
            const SizedBox(
              height: kDefaultPadding,
            ),
            Text(
              description,
              textAlign: TextAlign.center,
              style: GoogleFonts.dancingScript().copyWith(
                fontSize: 20,
              ),
            )
          ],
        ),
      ),
    ],
  );
}

class MyCustomClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 3 / 5);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height * 4 / 5);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class MyCustomClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 4 / 5);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height * 4 / 5);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class MyCustomClipper3 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 4 / 5);
    path.quadraticBezierTo(
        size.width * 4 / 5, size.height, size.width, size.height * 3 / 5);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
