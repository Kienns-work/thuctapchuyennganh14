import 'dart:async';

import 'package:bookinghotel/core/constants/colors_constants.dart';
import 'package:bookinghotel/core/constants/dimension_constants.dart';
import 'package:bookinghotel/core/constants/textstyle_constants.dart';
import 'package:bookinghotel/core/data/data_intro.dart';
import 'package:bookinghotel/core/helpers/asset_helper.dart';
import 'package:bookinghotel/representation/screens/main_screen.dart';
import 'package:bookinghotel/representation/widgets/button_widget.dart';
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
  final StreamController<int> _pageStreamController =
      StreamController<int>.broadcast();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController.addListener(() {
      _pageStreamController.add(_pageController.page!.toInt());
    });
  }

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
            right: kDefaultPadding,
            child: Row(
              children: [
                Expanded(
                  flex: 5,
                  child: SmoothPageIndicator(
                    effect: const ExpandingDotsEffect(
                      dotWidth: 5,
                      dotHeight: 5,
                      activeDotColor: ColorPlette.primaryColor,
                    ),
                    controller: _pageController,
                    count: 3,
                  ),
                ),
                StreamBuilder<int>(
                    initialData: 0,
                    stream: _pageStreamController.stream,
                    builder: (context, snapshot) {
                      return Expanded(
                        flex: 5,
                        child: ButtonWidget(
                          title: snapshot.data != 2 ? "Next" : "Get Started",
                          ontap: () => {
                            if (_pageController.page != 2)
                              {
                                _pageController.nextPage(
                                    duration: const Duration(milliseconds: 500),
                                    curve: Curves.easeOutExpo)
                              }
                            else
                              {
                                Navigator.of(context)
                                    .pushNamed(MainScreen.routeName)
                              }
                          },
                        ),
                      );
                    })
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
