import 'package:bookinghotel/core/constants/colors_constants.dart';
import 'package:bookinghotel/core/constants/dimension_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppBarContainerWidget extends StatelessWidget {
  const AppBarContainerWidget({
    super.key,
    required this.child,
    this.title,
    this.implementLeading = false,
    this.implementTraling = false,
    required this.titleString,
  });

  final Widget child;
  final Widget? title;
  final bool implementLeading;
  final String titleString;
  final bool implementTraling;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: 186,
            child: AppBar(
              automaticallyImplyLeading: false,
              centerTitle: true,
              backgroundColor: Colors.white,
              elevation: 0,
              title: title ??
                  Row(children: [
                    if (implementLeading)
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                        padding: EdgeInsets.all(5),
                        child: Icon(
                          FontAwesomeIcons.arrowLeft,
                          color: ColorPalette.primaryColor,
                          size: 24,
                        ),
                      ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(titleString),
                        ],
                      ),
                    ),
                    if (implementTraling)
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                        padding: EdgeInsets.all(5),
                        child: Icon(
                          FontAwesomeIcons.bars,
                          color: ColorPalette.primaryColor,
                          size: 24,
                        ),
                      ),
                  ]),
              // toolbarHeight: 200,
              flexibleSpace: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        gradient: Gradients.defaultGradientBackground,
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(50))),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 156),
            padding: EdgeInsets.symmetric(horizontal: kMediumPadding),
            child: child,
          ),
        ],
      ),
    );
  }
}
