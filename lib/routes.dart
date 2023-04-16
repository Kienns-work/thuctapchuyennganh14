import 'package:bookinghotel/representation/screens/hotel_booking_screen.dart';
import 'package:bookinghotel/representation/screens/intro_screen.dart';
import 'package:bookinghotel/representation/screens/main_screen.dart';
import 'package:bookinghotel/representation/screens/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  IntroScreen.routeName: (context) => IntroScreen(),
  MainScreen.routeName: (context) => MainScreen(),
  HotelBookingScreen.routeName: (context) => HotelBookingScreen(),
};
