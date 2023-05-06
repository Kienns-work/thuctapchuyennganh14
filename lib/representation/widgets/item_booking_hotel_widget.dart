import 'package:bookinghotel/core/constants/dimension_constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemBookingHotelWidget extends StatelessWidget {
  ItemBookingHotelWidget({
    super.key,
    required this.onTap,
    required this.content,
    required this.icon,
    required this.color,
    required this.title,
  });
  String title;
  Function onTap;
  String content;
  IconData icon;
  Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        padding: EdgeInsets.all(kDefaultPadding),
        margin: EdgeInsets.only(bottom: kDefaultPadding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kMediumPadding),
          color: Colors.white,
        ),
        child: Row(children: [
          Container(
            padding: EdgeInsets.all(kDefaultPadding / 2),
            decoration: BoxDecoration(
              color: color.withOpacity(0.3),
              borderRadius: BorderRadius.circular(kDefaultPadding / 2),
            ),
            child: Center(
              child: Icon(
                icon,
                color: color,
              ),
            ),
          ),
          SizedBox(
            width: kDefaultPadding,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title),
              SizedBox(
                height: kDefaultPadding / 2,
              ),
              Text(
                content,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
