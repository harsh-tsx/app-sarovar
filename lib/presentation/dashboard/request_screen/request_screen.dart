import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/core/utils/app_utils.dart';
import 'package:app_1point2_store/core/utils/types.dart';
import 'package:app_1point2_store/presentation/dashboard/request_screen/widgets/calendar_section.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'controller/request_screen_controller.dart';

class RequestScreen extends StatefulWidget {
  const RequestScreen({super.key});

  @override
  State<RequestScreen> createState() => _RequestScreenState();
}

class _RequestScreenState extends State<RequestScreen> {
  var controller = isControllerRegistered<RequestScreenController>(
      RequestScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.primaryYellow,
      body: SafeArea(
        child: SizedBox(
          height: Get.height,
          width: Get.width,
          // decoration: BoxDecoration(image: DecorationImage(image: AssetImage(Assets.drops), fit: BoxFit.fill)),
          child: Column(
            children: [
              // Header Section
              _buildHeaderSection(),
              // Inventory Section
              _buildInventorySection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeaderSection() {
    return SizedBox(
      height: Get.height * .1,
      width: Get.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 12),
          Text(
            "Request",
            style: GoogleFonts.comfortaa(
                fontSize: 24, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }

  _buildInventorySection() {
    return Container(
      decoration: BoxDecoration(
          color: theme.scaffoldBackgroundColor,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20))),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 4),
                CalendarSection(),
                const SizedBox(height: 24),
                Column(
                  children: [
                    Text(
                      "Can Counts:",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.fSize,
                      ),
                    ),
                    SizedBox(
                      width: SizeUtils.width.percent(60),
                      child: TextField(
                        controller: controller.waterCan,
                        keyboardType: TextInputType.number,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter Number',
                          hintText: 'Enter Number',
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 24.h),
                SizedBox(
                  width: SizeUtils.width.percent(60),
                  child: ElevatedButton(
                    onPressed: () {
                      controller.addForecast();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: appTheme.black900,
                      minimumSize: const Size(double.infinity, 48),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Color(0xff375DFB),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 30.h),
                    ),
                    child: Text(
                      'Submit Request',
                      style: GoogleFonts.comfortaa(color: theme.primaryColor),
                    ),
                  ),
                ),
                SizedBox(height: 24.h),
                Container(
                  height: SizeUtils.height.percent(35),
                  child: Obx(
                    () => ListView.builder(
                      itemCount: controller.forecastList.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        var item = controller.forecastList[index];
                        return Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 10.h, horizontal: 14.w),
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: Colors.transparent,
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          child: IntrinsicHeight(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _buildField(
                                    title: "Order ID:",
                                    value: "${item.id?.substring(0, 5)}..."),
                                VerticalDivider(
                                  color: Colors.black,
                                  thickness: 1,
                                ),
                                _buildField(
                                    title: "Cans:",
                                    value: "${item?.watercans?.toInt()}"),
                                VerticalDivider(
                                  color: Colors.black,
                                  thickness: 1,
                                ),
                                _buildField(
                                    title: "Status:",
                                    value: "REQUESTED",
                                    isStatus: true),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
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
