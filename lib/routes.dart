import 'package:bookinghotel/representation/screens/guest_and_room.dart';
import 'package:bookinghotel/representation/screens/hotel_booking_screen.dart';
import 'package:bookinghotel/representation/screens/intro_screen.dart';
import 'package:bookinghotel/representation/screens/main_screen.dart';
import 'package:bookinghotel/representation/screens/select_date_screen.dart';
import 'package:bookinghotel/representation/screens/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  IntroScreen.routeName: (context) => IntroScreen(),
  MainScreen.routeName: (context) => MainScreen(),
  HotelBookingScreen.routeName: (context) => HotelBookingScreen(),
  SelectDateScreen.routeName: (context) => SelectDateScreen(),
  GuestAndRoomScreen.routeName: (context) => GuestAndRoomScreen(),
};
