import 'package:bookinghotel/core/constants/colors_constants.dart';
import 'package:bookinghotel/core/helpers/local_storage_helper.dart';
import 'package:bookinghotel/representation/screens/splash_screen.dart';
import 'package:bookinghotel/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  await localStorageHelper.initLocalStorageHelper();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Booking Hotel",
      theme: ThemeData(
        primaryColor: ColorPalette.primaryColor,
      ),
      routes: routes,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
