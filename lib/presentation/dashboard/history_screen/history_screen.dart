import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/core/utils/app_utils.dart';
import 'package:app_1point2_store/core/utils/types.dart';
import 'package:app_1point2_store/presentation/dashboard/home_screen/controller/home_controller.dart';
import 'package:app_1point2_store/presentation/dashboard/history_screen/history_screen.controller.dart';
import 'package:app_1point2_store/swagger_generated_code/store_api.swagger.dart';
import 'package:app_1point2_store/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class HistoryScreen extends StatefulWidget {
  HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  var homeControllr = isControllerRegistered<HomeController>(HomeController());
  var controller = isControllerRegistered<HistoryScreenController>(HistoryScreenController());

  final ScrollController _scrollController = ScrollController();
  final ScrollController _scrollController2 = ScrollController();
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_loadMoreItems);
    _scrollController2.addListener(_loadMoreItems2);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _scrollController2.dispose();
    super.dispose();
  }

  void _loadMoreItems() {
    if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
      controller.getInHistory(controller.inPage.value + 1);
    }
  }

  void _loadMoreItems2() {
    if (_scrollController2.position.pixels == _scrollController2.position.maxScrollExtent) {
      controller.getOutHistory(controller.outPage.value + 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.primaryColor,
      body: SafeArea(
        child: GetBuilder<HistoryScreenController>(builder: (_context) {
          return RefreshIndicator(
            onRefresh: () async {
              if (controller.currentTab == "IN") {
                await controller.getInHistory(0);
              } else {
                await controller.getOutHistory(0);
              }
            },
            child: Column(
              children: [
                Container(
                  height: Get.height * .12,
                  width: Get.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(ImageConstant.pageBg),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        blurRadius: 4.0,
                      ),
                    ],
                  ),
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
                              width: Get.width * .50,
                              height: 40.h,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: controller.currentTab.value == "IN" ? Colors.black : Color(0xffD8CBA0),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                border: Border(
                                  top: BorderSide(
                                    color: Color(0xffE4DABA),
                                  ),
                                  right: BorderSide(
                                    color: Color(0xffE4DABA),
                                  ),
                                  left: BorderSide(
                                    color: Color(0xffE4DABA),
                                  ),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "IN",
                                    style: TextStyle(
                                      color:
                                          controller.currentTab.value == "IN" ? appTheme.primaryYellow : Colors.black,
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
                              width: Get.width * .50,
                              height: 40.h,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: controller.currentTab.value == "OUT" ? Colors.black : Color(0xffD8CBA0),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                border: Border(
                                  top: BorderSide(
                                    color: Color(0xffE4DABA),
                                  ),
                                  right: BorderSide(
                                    color: Color(0xffE4DABA),
                                  ),
                                  left: BorderSide(
                                    color: Color(0xffE4DABA),
                                  ),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "OUT",
                                    style: TextStyle(
                                      color:
                                          controller.currentTab.value == "OUT" ? appTheme.primaryYellow : Colors.black,
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
                    ? Expanded(
                        child: controller.inHistoryList.length > 0
                            ? Container(
                                // height: Get.height * .69,
                                decoration: BoxDecoration(color: Color(0xffE4DABA)),
                                child: ListView.builder(
                                  controller: _scrollController,
                                  physics: const AlwaysScrollableScrollPhysics(),
                                  itemCount: controller.inHistoryList.length,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) => _buildHistoryRow(controller.inHistoryList[index]),
                                ),
                              )
                            : Container(
                                width: SizeUtils.width,
                                decoration: BoxDecoration(color: Color(0xffE4DABA)),
                                child: Center(
                                  child: CircularProgressIndicator(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                      )
                    : Expanded(
                        child: controller.outHistoryList.length > 0
                            ? Container(
                                // height: Get.height * .69,
                                decoration: BoxDecoration(color: Color(0xffE4DABA)),
                                child: ListView.builder(
                                  controller: _scrollController2,
                                  physics: const AlwaysScrollableScrollPhysics(),
                                  itemCount: controller.outHistoryList.length,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) => _buildHistoryRow2(controller.outHistoryList[index]),
                                ),
                              )
                            : Container(
                                width: SizeUtils.width,
                                decoration: BoxDecoration(color: Color(0xffE4DABA)),
                                child: Center(
                                  child: CircularProgressIndicator(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                      )
              ],
            ),
          );
        }),
      ),
    );
  }

  Widget _buildHistoryRow(EmployeeStoreOrdersGet$Response$Data$Item item) {
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
                "${item.date}",
                style: GoogleFonts.comfortaa(fontSize: 14.fSize, fontWeight: FontWeight.w900),
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
                _buildField(title: "Order ID:", value: "${item.id?.substring(0, 5)}..."),
                _buildField(title: "Cans:", value: "${item?.watercans?.toInt()}"),
                _buildField(title: "Status:", value: "${item?.status}", isStatus: true),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildHistoryRow2(EmployeeStoreReturnOrderGet$Response$Data$Item item) {
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
                "${item.date}",
                style: GoogleFonts.comfortaa(fontSize: 14.fSize, fontWeight: FontWeight.w900),
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
                _buildField(title: "Order ID:", value: "${item.id?.substring(0, 5)}..."),
                _buildField(title: "Cans:", value: "${item?.watercans?.toInt()}"),
                _buildField(title: "Status:", value: "${item?.status}", isStatus: true),
              ],
            ),
          )
        ],
      ),
    );
  }

  Column _buildField({required String title, required String value, bool isStatus = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: GoogleFonts.comfortaa(fontSize: 10.fSize, fontWeight: FontWeight.w700),
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
