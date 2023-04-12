import 'package:bookinghotel/core/constants/colors_constants.dart';
import 'package:bookinghotel/core/constants/dimension_constants.dart';
import 'package:bookinghotel/core/helpers/asset_helper.dart';
import 'package:bookinghotel/core/helpers/image_helper.dart';
import 'package:bookinghotel/representation/widgets/app_bar_container.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget _buildItemCategory(
      IconData icon, Color color, Function onTap, String title) {
    return GestureDetector(
      onTap: () => onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
        decoration: BoxDecoration(
          color: color.withOpacity(0.3),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(children: [
          Icon(
            icon,
            color: color,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppBarContainerWidget(
      title: Padding(
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: Text(
                    "Hi, there !",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  "Hi, Welcome to Nhom14",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            Spacer(),
            Icon(
              FontAwesomeIcons.bell,
              size: 18,
            ),
            SizedBox(
              width: 8,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: ImageHelper.loadFromAsset(
                AssetHelper.imageIntro1,
                width: 40,
                height: 40,
                radius: BorderRadius.circular(10),
              ),
            )
          ],
        ),
      ),
      implementLeading: true,
      implementTraling: true,
      titleString: "Home",
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: Offset(4, 4), // changes position of shadow
                ),
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search Your Destination',
                prefixIcon: Padding(
                  padding: EdgeInsets.all(5),
                  child: Icon(
                    FontAwesomeIcons.magnifyingGlass,
                    color: Colors.black,
                  ),
                ),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 12),
              ),
            ),
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: [
              Expanded(
                child: _buildItemCategory(
                  FontAwesomeIcons.plane,
                  ColorPalette.redColor,
                  () {},
                  "Flights",
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: _buildItemCategory(
                  FontAwesomeIcons.bed,
                  ColorPalette.yellowColor,
                  () {},
                  "Hotels",
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: _buildItemCategory(
                  FontAwesomeIcons.buildingUser,
                  ColorPalette.blueColor,
                  () {},
                  "All",
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
