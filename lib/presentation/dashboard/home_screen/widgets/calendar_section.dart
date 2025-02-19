import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/core/utils/app_utils.dart';
import 'package:app_1point2_store/core/utils/types.dart';
import 'package:app_1point2_store/presentation/dashboard/home_screen/controller/home_controller.dart';
import 'package:flutter/material.dart';
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
    });
  }

  void _nextWeek() {
    setState(() {
      selectedDate = selectedDate.add(const Duration(days: 7));
      currentMonth = DateTime(selectedDate.year, selectedDate.month);
    });
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
                DateFormat('MMMM yyyy').format(currentMonth),
                style: GoogleFonts.poppins(
                  fontSize: 12.fSize,
                  color: appTheme.black900,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "Time Slot- 03:00 PM to 04:00 PM",
                style: GoogleFonts.poppins(
                  fontSize: 12.fSize,
                  color: appTheme.black900,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
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
                        controller.getHomeDashboardData(date);
                      });
                    },
                    child: today == date
                        ? SizedBox(
                            width: SizeUtils.width / 6,
                            child: Column(
                              children: [
                                Text(
                                  DateFormat('EEE').format(date).substring(0, 3),
                                  style: GoogleFonts.poppins(
                                    fontSize: 12.fSize,
                                    color: Colors.grey[600],
                                  ),
                                ),
                                Container(
                                  width: 100.w,
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: isSelected ? theme.primaryColor : null,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Column(
                                    children: [
                                      // Text(
                                      //   '${date.day}',
                                      //   style: GoogleFonts.poppins(
                                      //     fontWeight: isSelected
                                      //         ? FontWeight.bold
                                      //         : FontWeight.normal,
                                      //   ),
                                      // ),
                                      Text(
                                        'Today',
                                        style: GoogleFonts.poppins(
                                          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        : SizedBox(
                            width: 40.w,
                            child: Column(
                              children: [
                                Text(
                                  DateFormat('EEE').format(date).substring(0, 3),
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: Colors.grey[600],
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: isSelected ? theme.primaryColor : null,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Text(
                                    '${date.day}',
                                    style: GoogleFonts.poppins(
                                      fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
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
