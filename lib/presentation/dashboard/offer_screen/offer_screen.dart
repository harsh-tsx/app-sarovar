import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/core/utils/types.dart';
import 'package:app_1point2_store/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OfferScreen extends StatelessWidget {
  OfferScreen({super.key});

  var list = ["The World Cup", "Asian Cup", "Africa Cup of Nations"];

  @override
  Widget build(BuildContext context) {
    return HistoryScreen();
  }
}

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: Get.height * .12,
              width: Get.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 12),
                  Text(
                    "History",
                    style: GoogleFonts.comfortaa(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: Get.width * .49,
                        height: 40.h,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Today’s In: ",
                              style: TextStyle(
                                color: appTheme.primaryYellow,
                              ),
                            ),
                            Text(
                              "15",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: Get.width * .49,
                        height: 40.h,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Today’s In: ",
                              style: TextStyle(
                                color: appTheme.primaryYellow,
                              ),
                            ),
                            Text(
                              "15",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: Get.height * .69,
              decoration: BoxDecoration(color: Color(0xffE4DABA)),
              child: ListView.builder(
                itemCount: 18,
                shrinkWrap: true,
                itemBuilder: (context, index) => _buildHistoryRow(),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildHistoryRow() {
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 10.w, right: 10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              SizedBox(width: 20),
              Text(
                "05/01/2025",
                style: GoogleFonts.comfortaa(
                    fontSize: 10, fontWeight: FontWeight.w700),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 14.w),
            decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Color(0xff696767),
                ),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildField(title: "Order ID:", value: "12345678"),
                _buildField(title: "Cans:", value: "10"),
                _buildField(
                    title: "Status:", value: "Delivered", isStatus: true),
              ],
            ),
          )
        ],
      ),
    );
  }

  Column _buildField(
      {required String title, required String value, bool isStatus = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: GoogleFonts.comfortaa(
              fontSize: 10.fSize, fontWeight: FontWeight.w700),
        ),
        Text(
          value,
          style: GoogleFonts.comfortaa(
            color: isStatus ? Color(0xff008B23) : appTheme.black900,
            fontSize: 12.fSize,
            fontWeight: FontWeight.w900,
          ),
        ),
      ],
    );
  }
}
