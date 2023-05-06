import 'package:bookinghotel/representation/widgets/app_bar_container.dart';
import 'package:flutter/material.dart';

import '../../core/constants/dimension_constants.dart';

class GuestAndRoomScreen extends StatefulWidget {
  const GuestAndRoomScreen({super.key});
  static const String routeName = "/guest_and_room_screen";

  @override
  State<GuestAndRoomScreen> createState() => _GuestAndRoomScreenState();
}

class _GuestAndRoomScreenState extends State<GuestAndRoomScreen> {
  @override
  Widget build(BuildContext context) {
    return AppBarContainerWidget(
        child: Column(children: [
          SizedBox(
            height: kMediumPadding * 2,
          )
        ]),
        titleString: "Guest And Room");
  }
}
