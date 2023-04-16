import 'package:bookinghotel/core/constants/colors_constants.dart';
import 'package:bookinghotel/core/constants/dimension_constants.dart';
import 'package:bookinghotel/representation/widgets/app_bar_container.dart';
import 'package:bookinghotel/representation/widgets/button_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/item_booking_hotel_widget.dart';

class HotelBookingScreen extends StatefulWidget {
  const HotelBookingScreen({super.key});
  static const String routeName = "/hotel_booking_screen";

  @override
  State<HotelBookingScreen> createState() => _HotelBookingScreenState();
}

class _HotelBookingScreenState extends State<HotelBookingScreen> {
  @override
  Widget build(BuildContext context) {
    return AppBarContainerWidget(
      implementLeading: true,
      titleString: "Hotel Booking",
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: kMediumPadding * 2,
            ),
            ItemBookingHotelWidget(
              color: ColorPalette.redColor,
              title: "Destination",
              content: "Hà Nội",
              icon: Icons.place,
              onTap: () {},
            ),
            ItemBookingHotelWidget(
              title: "Selected Date",
              color: ColorPalette.yellowColor,
              content: "Hà Nội",
              icon: Icons.calendar_month_sharp,
              onTap: () {},
            ),
            ItemBookingHotelWidget(
              title: "Guest And Room",
              color: ColorPalette.primaryColor,
              content: "2 Guest, 1 Room",
              icon: Icons.bed,
              onTap: () {},
            ),
            ButtonWidget(
              title: "Search",
              ontap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
