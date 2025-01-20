import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/core/utils/app_utils.dart';
import 'package:app_1point2_store/core/utils/types.dart';
import 'package:app_1point2_store/presentation/dashboard/home_screen/controller/home_controller.dart';
import 'package:app_1point2_store/presentation/dashboard/offer_screen/offer_screen.controller.dart';
import 'package:app_1point2_store/swagger_generated_code/store_api.swagger.dart';
import 'package:app_1point2_store/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class OfferScreen extends StatelessWidget {
  OfferScreen({super.key});

  var list = ["The World Cup", "Asian Cup", "Africa Cup of Nations"];

  @override
  Widget build(BuildContext context) {
    return HistoryScreen();
  }
}

class HistoryScreen extends StatefulWidget {
  HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  var homeControllr = isControllerRegistered<HomeController>(HomeController());
  var controller =
      isControllerRegistered<OfferScreenController>(OfferScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.primaryColor,
      body: SafeArea(
        child: GetBuilder<OfferScreenController>(builder: (_context) {
          return Column(
            children: [
              SizedBox(
                height: Get.height * .12,
                width: Get.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 12.h),
                    Text(
                      "History",
                      style: GoogleFonts.comfortaa(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 12.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            controller.handleCurrentTabChange("IN");
                          },
                          child: Container(
                            width: Get.width * .45,
                            height: 40.h,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: controller.currentTab.value == "IN"
                                  ? appTheme.pageBg
                                  : Colors.black,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                              border: Border(
                                top: BorderSide(
                                  color: Colors.black,
                                ),
                                right: BorderSide(
                                  color: Colors.black,
                                ),
                                left: BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "IN",
                                  style: TextStyle(
                                    color: controller.currentTab.value == "IN"
                                        ? Colors.black
                                        : appTheme.primaryYellow,
                                  ),
                                ),
                                // Text(
                                //   "${(homeControllr.homeDashboard?.value?.todaysIn ?? 0.0)?.toInt()}",
                                //   style: TextStyle(
                                //     color: controller.currentTab.value == "IN"
                                //         ? Colors.white
                                //         : Colors.black,
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            controller.handleCurrentTabChange("OUT");
                          },
                          child: Container(
                            width: Get.width * .45,
                            height: 40.h,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: controller.currentTab.value == "OUT"
                                  ? appTheme.pageBg
                                  : Colors.black,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                              border: Border(
                                top: BorderSide(
                                  color: Colors.black,
                                ),
                                right: BorderSide(
                                  color: Colors.black,
                                ),
                                left: BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "OUT",
                                  style: TextStyle(
                                    color: controller.currentTab.value == "OUT"
                                        ? Colors.black
                                        : appTheme.primaryYellow,
                                  ),
                                ),
                                // Text(
                                //   "${(homeControllr.homeDashboard?.value?.todaysOut ?? 0.0)?.toInt()}",
                                //   style: TextStyle(
                                //     color: Colors.white,
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              controller.currentTab.value == "IN"
                  ? Container(
                      height: Get.height * .69,
                      decoration: BoxDecoration(color: Color(0xffE4DABA)),
                      child: ListView.builder(
                        itemCount: controller.inHistoryList.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) =>
                            _buildHistoryRow(controller.inHistoryList[index]),
                      ),
                    )
                  : Container(
                      height: Get.height * .69,
                      decoration: BoxDecoration(color: Color(0xffE4DABA)),
                      child: ListView.builder(
                        itemCount: controller.outHistoryList.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) =>
                            _buildHistoryRow(controller.outHistoryList[index]),
                      ),
                    )
            ],
          );
        }),
      ),
    );
  }

  Widget _buildHistoryRow(EmployeeStoreOrdersGet$Response$Data$Item item) {
    final DateFormat formatter = DateFormat('yyyy-MM-dd');
    var formatted = formatter.format(DateTime.parse(item.date ?? ""));

    print(formatted);

    return Padding(
      padding: EdgeInsets.only(top: 10.h, left: 10.w, right: 10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              SizedBox(width: 20.w),
              Text(
                "${formatted}",
                style: GoogleFonts.comfortaa(
                    fontSize: 14.fSize, fontWeight: FontWeight.w900),
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
                _buildField(
                    title: "Order ID:",
                    value: "${item.id?.substring(0, 5)}..."),
                _buildField(
                    title: "Cans:", value: "${item?.watercans?.toInt()}"),
                _buildField(
                    title: "Status:", value: "${item?.status}", isStatus: true),
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
            color: isStatus
                ? value == "DELIVERED"
                    ? Color(0xff008B23)
                    : Colors.orange
                : appTheme.black900,
            fontSize: 12.fSize,
            fontWeight: FontWeight.w900,
          ),
        ),
      ],
    );
  }
}
