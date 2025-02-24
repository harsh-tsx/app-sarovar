import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/core/utils/app_utils.dart';
import 'package:app_1point2_store/core/utils/types.dart';
import 'package:app_1point2_store/presentation/complaiint/complaint.controller.dart';
import 'package:app_1point2_store/presentation/dashboard/dashboard_controller.dart';
import 'package:app_1point2_store/presentation/dashboard/home_screen/controller/home_controller.dart';
import 'package:app_1point2_store/presentation/dashboard/history_screen/history_screen.controller.dart';
import 'package:app_1point2_store/swagger_generated_code/store_api.swagger.dart';
import 'package:app_1point2_store/widgets/custom_elevated_button.dart';
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
  var dashboardController = isControllerRegistered<DashboardController>(DashboardController());
  var complaintScreen = isControllerRegistered<ComplaintController>(ComplaintController());

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
      body: GetBuilder<HistoryScreenController>(builder: (_context) {
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
                height: Get.height * .15,
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
                      style: GoogleFonts.poppins(
                        fontSize: 20.fSize,
                        fontWeight: FontWeight.w500,
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
                                  "In",
                                  style: GoogleFonts.poppins(
                                    color: controller.currentTab.value == "IN" ? appTheme.primaryYellow : Colors.black,
                                    fontSize: 16.fSize,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                // Text(
                                //   "${(homeControllr.homeDashboard?.value?.todaysIn ?? 0.0)?.toInt()}",
                                //   style: GoogleFonts.poppins(
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
                                  "Out",
                                  style: GoogleFonts.poppins(
                                    color: controller.currentTab.value == "OUT" ? appTheme.primaryYellow : Colors.black,
                                    fontSize: 16.fSize,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                // Text(
                                //   "${(homeControllr.homeDashboard?.value?.todaysOut ?? 0.0)?.toInt()}",
                                //   style: GoogleFonts.poppins(
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
                      child: controller.inHistoryList.length > 0 && !controller.isInLoading.value
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
                              child: controller.isInLoading.value
                                  ? Center(
                                      child: CircularProgressIndicator(
                                        color: Colors.black,
                                      ),
                                    )
                                  : Center(
                                      child: Text("No Data!"),
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
                              child: controller.isOutLoading.value
                                  ? Center(
                                      child: CircularProgressIndicator(
                                        color: Colors.black,
                                      ),
                                    )
                                  : Center(
                                      child: Text("No Data!"),
                                    ),
                            ),
                    )
            ],
          ),
        );
      }),
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
                style: GoogleFonts.poppins(fontSize: 10.fSize, fontWeight: FontWeight.w900),
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
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffD8CBA0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildField(title: "Order ID: ", value: "${item.id?.substring(0, 5)}..."),
                    _buildField(title: "Cans: ", value: "${item?.watercans?.toInt()}"),
                    _buildField(title: "Status: ", value: "${item?.status}", isStatus: true),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomElevatedButton(
                      onPressed: item.complaint != null
                          ? null
                          : () {
                              complaintScreen.handleCurrentTabChange("IN");
                              dashboardController.handlBottomNavChange(4);
                              complaintScreen.orderId.value = item.id ?? "";
                              complaintScreen.orderWaterCans.value = item.watercans?.toInt() ?? 0;
                            },
                      isDisabled: item.complaint != null,
                      buttonStyle: ElevatedButton.styleFrom(
                        disabledBackgroundColor: Color(0xffB0B0B0),
                        backgroundColor: appTheme.black900,
                        minimumSize: const Size(double.infinity, 48),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 5.w,
                        ),
                        alignment: Alignment.center,
                      ),
                      alignment: Alignment.center,
                      buttonTextStyle: GoogleFonts.poppins(
                        color: item.complaint != null ? Color(0xff474747) : theme.primaryColor,
                        fontSize: 11.fSize,
                        fontWeight: FontWeight.w600,
                      ),
                      text: 'Raise a Ticket',
                      width: 130.w,
                      height: 26.h,
                      leftIcon: Row(
                        children: [
                          Icon(
                            Icons.warning_rounded,
                            size: 16.fSize,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
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
                style: GoogleFonts.poppins(fontSize: 14.fSize, fontWeight: FontWeight.w900),
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
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffD8CBA0),
            ),
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

  Row _buildField({required String title, required String value, bool isStatus = false}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
          width: 60.w,
          child: Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 13.fSize,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Text(
          value,
          style: GoogleFonts.poppins(
            color: isStatus
                ? value == "DELIVERED"
                    ? Color(0xff008B23)
                    : Color(0xffCA0000)
                : appTheme.black900,
            fontSize: 13.fSize,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
