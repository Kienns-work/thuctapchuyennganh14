import 'package:bookinghotel/core/constants/colors_constants.dart';
import 'package:bookinghotel/representation/screens/splash_screen.dart';
import 'package:bookinghotel/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Booking Hotel",
      theme: ThemeData(
        primaryColor: ColorPlette.primaryColor,
      ),
      routes: routes,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
