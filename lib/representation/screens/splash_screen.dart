import 'package:bookinghotel/core/constants/colors_constants.dart';
import 'package:bookinghotel/core/helpers/asset_helper.dart';
import 'package:bookinghotel/core/helpers/image_helper.dart';
import 'package:bookinghotel/core/helpers/local_storage_helper.dart';
import 'package:bookinghotel/representation/screens/main_screen.dart';
import 'package:flutter/material.dart';

import 'intro_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static String routeName = '/splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    // TODO: implement initState
    super.initState();
    redirectIntroScreen();
  }

  void redirectIntroScreen() async {
    final ignoreIntroScreen =
        localStorageHelper.getValue('ignoreIntroScreen') as bool?;
    await Future.delayed(const Duration(seconds: 2));
    // ignore: use_build_context_synchronously
    if (ignoreIntroScreen != null && ignoreIntroScreen) {
      Navigator.of(context).pushNamed(MainScreen.routeName);
    } else {
      localStorageHelper.setValue('ignoreIntroScreen', true);
      Navigator.of(context).pushNamed(IntroScreen.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: ColorPalette.primaryColor,
      ),
      child: const Center(
        child: Text(
          "Nhom14",
          style: TextStyle(
            color: Colors.white,
            decoration: TextDecoration.none,
          ),
        ),
      ),
    );
  }
}
