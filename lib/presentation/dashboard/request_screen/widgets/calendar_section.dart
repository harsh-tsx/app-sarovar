import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/core/utils/app_utils.dart';
import 'package:app_1point2_store/presentation/dashboard/home_screen/controller/home_controller.dart';
import 'package:app_1point2_store/presentation/dashboard/request_screen/controller/request_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class CalendarSection extends StatefulWidget {
  @override
  _CalendarSectionState createState() => _CalendarSectionState();
}

class _CalendarSectionState extends State<CalendarSection> {
  late DateTime selectedDate;
  late DateTime currentMonth;
  late DateTime today;
  var controller = isControllerRegistered<HomeController>(HomeController());
  var requestController = isControllerRegistered<RequestScreenController>(
      RequestScreenController());

  @override
  void initState() {
    super.initState();
    selectedDate = DateTime.now();
    today = selectedDate;
    controller.getHomeDashboardData(selectedDate);
    currentMonth = DateTime(selectedDate.year, selectedDate.month);
  }

  List<DateTime> _getCurrentWeek() {
    DateTime today = selectedDate;
    int currentWeekday = today.weekday;

    // first day (Monday) of the current week
    DateTime monday = today.subtract(Duration(days: currentWeekday - 1));

    // Generating the week
    List<DateTime> week = List.generate(7, (index) {
      return monday.add(Duration(days: index));
    });

    return week;
  }

  void _previousWeek() {
    setState(() {
      selectedDate = selectedDate.subtract(const Duration(days: 7));
      currentMonth = DateTime(selectedDate.year, selectedDate.month);
      requestController.handleDateUpdate(selectedDate);
    });
  }

  void _nextWeek() {
    setState(() {
      selectedDate = selectedDate.add(const Duration(days: 7));
      currentMonth = DateTime(selectedDate.year, selectedDate.month);
      requestController.handleDateUpdate(selectedDate);
    });
  }

  dateTimePickerWidget(BuildContext context) {
    return DatePicker.showDatePicker(context,
        showTitleActions: true,
        minTime: today,
        maxTime: DateTime(today.year + 1, 9, 4), onChanged: (date) {
      print('change $date');
      setState(() {
        selectedDate = date;
        requestController.handleDateUpdate(selectedDate);
      });
    }, onConfirm: (date) {
      print('confirm $date');
      setState(() {
        selectedDate = date;
        requestController.handleDateUpdate(selectedDate);
      });
    }, currentTime: DateTime.now(), locale: LocaleType.en);
  }

  @override
  Widget build(BuildContext context) {
    List<DateTime> currentWeek = _getCurrentWeek();

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // const Expanded(
            //     child: Divider(
            //   thickness: 1,
            //   indent: 50,
            // )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                DateFormat('MMMM yyyy').format(selectedDate),
                style: GoogleFonts.comfortaa(
                  fontSize: 12,
                  color: appTheme.black900,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            IconButton(
                onPressed: () {
                  dateTimePickerWidget(context);
                },
                icon: Icon(Icons.calendar_month))

            // const Expanded(
            //     child: Divider(
            //   thickness: 1,
            //   endIndent: 50,
            // )),
          ],
        ),
        const SizedBox(height: 16),

        // Navigation and Calendar
        Row(
          children: [
            InkWell(
              onTap: _previousWeek,
              child: const Icon(Icons.chevron_left),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(7, (index) {
                  DateTime date = currentWeek[index];
                  bool isSelected = date.day == selectedDate.day &&
                      date.month == selectedDate.month &&
                      date.year == selectedDate.year;

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedDate = date;
                        requestController.handleDateUpdate(selectedDate);
                      });
                    },
                    child: today == date
                        ? SizedBox(
                            width: SizeUtils.width / 6,
                            child: Column(
                              children: [
                                Text(
                                  DateFormat('EEE')
                                      .format(date)
                                      .substring(0, 3),
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey[600],
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color:
                                        isSelected ? theme.primaryColor : null,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Column(
                                    children: [
                                      // Text(
                                      //   '${date.day}',
                                      //   style: TextStyle(
                                      //     fontWeight: isSelected
                                      //         ? FontWeight.bold
                                      //         : FontWeight.normal,
                                      //   ),
                                      // ),
                                      Text(
                                        'Today',
                                        style: TextStyle(
                                          fontWeight: isSelected
                                              ? FontWeight.bold
                                              : FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        : SizedBox(
                            width: 40,
                            child: Column(
                              children: [
                                Text(
                                  DateFormat('EEE')
                                      .format(date)
                                      .substring(0, 3),
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey[600],
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color:
                                        isSelected ? theme.primaryColor : null,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Text(
                                    '${date.day}',
                                    style: TextStyle(
                                      fontWeight: isSelected
                                          ? FontWeight.bold
                                          : FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                  );
                }),
              ),
            ),
            InkWell(
              onTap: _nextWeek,
              child: const Icon(Icons.chevron_right),
            ),
          ],
        ),
      ],
    );
  }
}
