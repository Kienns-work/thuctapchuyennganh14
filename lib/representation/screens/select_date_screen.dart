import 'package:bookinghotel/core/constants/colors_constants.dart';
import 'package:bookinghotel/core/constants/dimension_constants.dart';
import 'package:bookinghotel/representation/widgets/app_bar_container.dart';
import 'package:bookinghotel/representation/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class SelectDateScreen extends StatelessWidget {
  SelectDateScreen({super.key});
  static const String routeName = "/select_date_screen";

  DateTime? rangeStartDate;
  DateTime? rangeEndDate;
  @override
  Widget build(BuildContext context) {
    return AppBarContainerWidget(
      titleString: "Select Date Screen",
      child: Column(
        children: [
          SizedBox(
            height: kMediumPadding * 2,
          ),
          SfDateRangePicker(
            view: DateRangePickerView.month,
            selectionMode:
                DateRangePickerSelectionMode.range, // Chọn khoảng thời gian
            monthViewSettings:
                DateRangePickerMonthViewSettings(firstDayOfWeek: 1),
            todayHighlightColor: ColorPalette.primaryColor,
            selectionColor: ColorPalette.primaryColor,
            monthCellStyle: DateRangePickerMonthCellStyle(
                todayTextStyle: TextStyle(color: ColorPalette.primaryColor)),
            headerStyle: DateRangePickerHeaderStyle(
              textAlign: TextAlign.center,
              textStyle: TextStyle(
                  color: ColorPalette.primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            rangeSelectionColor: ColorPalette.primaryColor.withOpacity(0.2),
            startRangeSelectionColor: ColorPalette.primaryColor,
            endRangeSelectionColor: ColorPalette.primaryColor,
            monthFormat: "MM",
            onSelectionChanged: (args) {
              if (args.value is PickerDateRange) {
                rangeStartDate = args.value.startDate;
                rangeEndDate = args.value.endDate;
              }
              print("Ngày bắt đầu:");
              print(args.value.startDate);
              print("Ngày kết thúc");
              print(args.value.endDate);
            },
          ),
          ButtonWidget(
            title: "Submit",
            ontap: () {
              Navigator.of(context).pop([rangeStartDate, rangeEndDate]);
            },
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          ButtonWidget(
              title: "Cancel",
              color: Color.fromARGB(255, 156, 153, 153),
              ontap: () {
                Navigator.of(context).pop();
              }),
        ],
      ),
    );
  }
}
