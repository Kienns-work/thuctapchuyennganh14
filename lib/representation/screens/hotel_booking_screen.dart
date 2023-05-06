import 'package:bookinghotel/core/constants/colors_constants.dart';
import 'package:bookinghotel/core/constants/dimension_constants.dart';
import 'package:bookinghotel/core/extensions/date_ext.dart';
import 'package:bookinghotel/representation/screens/select_date_screen.dart';

import 'package:bookinghotel/representation/widgets/app_bar_container.dart';
import 'package:bookinghotel/representation/widgets/button_widget.dart';
import 'package:bookinghotel/representation/widgets/item_booking_hotel_widget.dart';
import 'package:flutter/material.dart';

import 'guest_and_room.dart';

class HotelBookingScreen extends StatefulWidget {
  const HotelBookingScreen({super.key});
  static const String routeName = "/hotel_booking_screen";

  @override
  State<HotelBookingScreen> createState() => _HotelBookingScreenState();
}

class _HotelBookingScreenState extends State<HotelBookingScreen> {
  String dateRange = "Empty !!";
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
            StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) {
              return ItemBookingHotelWidget(
                  title: "Selected Date",
                  color: ColorPalette.yellowColor,
                  content: dateRange,
                  icon: Icons.calendar_month_sharp,
                  onTap: () async {
                    final result = await Navigator.of(context)
                        .pushNamed(SelectDateScreen.routeName);
                    if (result is List<DateTime?>) {
                      setState(() {
                        dateRange =
                            '${result[0]?.getStarteDate} - ${result[1]?.getEndDate}';
                      });
                    } else {
                      print("Có lỗi xảy ra....");
                    }
                  });
            }),
            ItemBookingHotelWidget(
              title: "Guest And Room",
              color: ColorPalette.primaryColor,
              content: "2 Guest, 1 Room",
              icon: Icons.bed,
              onTap: () {
                Navigator.of(context).pushNamed(GuestAndRoomScreen.routeName);
              },
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
