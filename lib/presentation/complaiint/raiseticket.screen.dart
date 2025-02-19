import 'dart:io';

import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/core/utils/app_utils.dart';
import 'package:app_1point2_store/core/utils/types.dart';
import 'package:app_1point2_store/presentation/complaiint/complaint.controller.dart';
import 'package:app_1point2_store/presentation/dashboard/dashboard_controller.dart';
import 'package:app_1point2_store/widgets/custom_drop_down.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ComplaintScreen extends StatefulWidget {
  ComplaintScreen({super.key});

  @override
  State<ComplaintScreen> createState() => _ComplaintScreenState();
}

class _ComplaintScreenState extends State<ComplaintScreen> {
  var controller = isControllerRegistered<ComplaintController>(ComplaintController());
  var dashboardController = isControllerRegistered<DashboardController>(DashboardController());

  final ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_loadMoreItems);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _loadMoreItems() {
    if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
      // controller.getInHistory(controller.inPage.value + 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.primaryColor,
      body: GetBuilder<ComplaintController>(builder: (_context) {
        return RefreshIndicator(
          onRefresh: () async {
            if (controller.currentTab == "IN") {
            } else {
              controller.getComplaints(0);
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
                      "Raise a Ticket",
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
                              color: controller.currentTab.value == "IN" ? Color(0xffE4DABA) : Color(0xffD8CBA0),
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
                              boxShadow: controller.currentTab.value == "IN"
                                  ? [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.25),
                                        blurRadius: 4.0,
                                      ),
                                    ]
                                  : null,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Current Ticket",
                                  style: GoogleFonts.poppins(
                                    color: controller.currentTab.value == "IN" ? Colors.black : Colors.black,
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
                              color: controller.currentTab.value == "OUT" ? Color(0xffE4DABA) : Color(0xffD8CBA0),
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
                              boxShadow: controller.currentTab.value == "OUT"
                                  ? [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.25),
                                        blurRadius: 4.0,
                                      ),
                                    ]
                                  : null,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "History",
                                  style: GoogleFonts.poppins(
                                    color: controller.currentTab.value == "OUT" ? Colors.black : Color(0xff1E1E1E),
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
                      child: Container(
                        // height: Get.height * .69,
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        decoration: BoxDecoration(color: Color(0xffE4DABA)),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  dashboardController.handlBottomNavChange(1);
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 20.w,
                                        ),
                                        Text("Order ID"),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    TextFormField(
                                      style: GoogleFonts.poppins(
                                        color: Colors.black,
                                      ),
                                      // controller: controller.id,
                                      enabled: false,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        fillColor: Colors.white,
                                        filled: true,
                                        hintText: "ID",
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.transparent),
                                          borderRadius: BorderRadius.circular(9),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.transparent),
                                          borderRadius: BorderRadius.circular(9),
                                        ),
                                        hintStyle: GoogleFonts.poppins(color: Colors.grey),
                                      ),
                                      initialValue: controller.orderId.value,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 20.w,
                                      ),
                                      Text("Complaint Type"),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  CustomDropDown(
                                    items: [
                                      SelectionPopupModel(title: "Damaged Cans", value: "Damaged Cans"),
                                      SelectionPopupModel(title: "Incomplete Delivery", value: "Incomplete Delivery"),
                                    ],
                                    fillColor: Colors.white,
                                    filled: true,
                                    borderDecoration: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(9),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                    ),
                                    onChanged: (p0) {
                                      controller.complaintType.value = p0.value;
                                    },
                                    defaultValue:
                                        controller.complaintType.value.isEmpty ? null : controller.complaintType.value,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 20.w,
                                      ),
                                      Text("Number of Cans"),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  TextFormField(
                                    style: GoogleFonts.poppins(
                                      color: Colors.black,
                                    ),
                                    keyboardType: TextInputType.number,
                                    controller: controller.watercans,
                                    decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      filled: true,
                                      hintText: "0",
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.transparent),
                                        borderRadius: BorderRadius.circular(9),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.transparent),
                                        borderRadius: BorderRadius.circular(9),
                                      ),
                                      hintStyle: GoogleFonts.poppins(color: Colors.grey),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              controller.images.length > 0
                                  ? Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: 20.w,
                                            ),
                                            Text("Images"),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Container(
                                          width: SizeUtils.width,
                                          height: 100.h,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: theme.primaryColor,
                                            ),
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(9),
                                          ),
                                          padding: EdgeInsets.all(5.w),
                                          alignment: Alignment.centerLeft,
                                          child: ListView.separated(
                                            scrollDirection: Axis.horizontal,
                                            shrinkWrap: true,
                                            separatorBuilder: (context, index) {
                                              return SizedBox(
                                                width: 10.w,
                                              );
                                            },
                                            itemBuilder: (context, index) => Container(
                                              width: 100.w,
                                              child: Stack(
                                                children: [
                                                  Image.file(
                                                    File(controller.images[index]?.path ?? ""),
                                                    width: 100.w,
                                                    height: 100.w,
                                                    alignment: Alignment.center,
                                                    colorBlendMode: BlendMode.darken,
                                                    color: Colors.black.withOpacity(0.3),
                                                    fit: BoxFit.cover,
                                                  ),
                                                  Positioned(
                                                    top: 0,
                                                    right: 0,
                                                    child: IconButton(
                                                      onPressed: () {
                                                        controller.deleteImage(index);
                                                      },
                                                      icon: Icon(
                                                        Icons.delete,
                                                        color: Color(0xffCA0000),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            itemCount: controller.images.length,
                                          ),
                                        )
                                      ],
                                    )
                                  : Container(),
                              SizedBox(
                                height: 10.h,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 20.w,
                                      ),
                                      Text("Description"),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Stack(
                                    children: [
                                      TextFormField(
                                        style: GoogleFonts.poppins(
                                          color: Colors.black,
                                        ),
                                        controller: controller.description,
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                          fillColor: Colors.white,
                                          filled: true,
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.transparent),
                                            borderRadius: BorderRadius.circular(9),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.transparent),
                                            borderRadius: BorderRadius.circular(9),
                                          ),
                                          hintStyle: GoogleFonts.poppins(color: Colors.grey),
                                        ),
                                        maxLines: 5,
                                      ),
                                      Positioned(
                                        top: 0,
                                        right: 0,
                                        child: InkWell(
                                          onTap: controller.handleImage,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: CustomImageView(
                                              imagePath: ImageConstant.camera,
                                              width: 40.w,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              SizedBox(
                                width: SizeUtils.width.percent(80),
                                height: 55.h,
                                child: ElevatedButton(
                                  onPressed: controller.handleSubmit,
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
                                    'Submit Complaint',
                                    style: GoogleFonts.poppins(color: theme.primaryColor),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 100.h,
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  : Expanded(
                      child: Container(
                        width: SizeUtils.width,
                        decoration: BoxDecoration(color: Color(0xffE4DABA)),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: controller.complaints.length,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  var item = controller.complaints[index];
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
                                              "${item.createdAt}",
                                              style:
                                                  GoogleFonts.poppins(fontSize: 14.fSize, fontWeight: FontWeight.w900),
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
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  _buildField(
                                                      title: "Order ID:", value: "${item.id?.substring(0, 5)}..."),
                                                  _buildField(title: "Cans:", value: "${item?.watercans?.toInt()}"),
                                                  _buildField(
                                                    title: "Issue:",
                                                    value: "${item?.type}",
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10.h,
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width: SizeUtils.width.percent(50),
                                                    height: 80.h,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: theme.primaryColor,
                                                      ),
                                                      color: Colors.white,
                                                      borderRadius: BorderRadius.circular(9),
                                                    ),
                                                    padding: EdgeInsets.all(5.w),
                                                    alignment: Alignment.centerLeft,
                                                    child: ListView.separated(
                                                      scrollDirection: Axis.horizontal,
                                                      shrinkWrap: true,
                                                      separatorBuilder: (context, index) {
                                                        return SizedBox(
                                                          width: 10.w,
                                                        );
                                                      },
                                                      itemBuilder: (context, index) => Container(
                                                        width: 80.w,
                                                        child: Stack(
                                                          children: [
                                                            CustomImageView(
                                                              imagePath: ((item.images ?? [])[index].toString() ?? ""),
                                                              width: 100.w,
                                                              height: 80.w,
                                                              alignment: Alignment.center,
                                                              color: Colors.black.withOpacity(0.3),
                                                              fit: BoxFit.cover,
                                                            ),
                                                            // Positioned(
                                                            //   top: 0,
                                                            //   right: 0,
                                                            //   child: IconButton(
                                                            //     onPressed: () {
                                                            //       controller.deleteImage(index);
                                                            //     },
                                                            //     icon: Icon(
                                                            //       Icons.delete,
                                                            //       color: Color(0xffCA0000),
                                                            //     ),
                                                            //   ),
                                                            // )
                                                          ],
                                                        ),
                                                      ),
                                                      itemCount: (item.images ?? []).length,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 8.w,
                                                  ),
                                                  Row(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    mainAxisSize: MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        "status: ",
                                                        style: GoogleFonts.poppins(
                                                          fontSize: 11.fSize,
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                      ),
                                                      Text(
                                                        "${item.status}",
                                                        style: GoogleFonts.poppins(
                                                          color: item.status == "DELIVERED"
                                                              ? Color(0xff008B23)
                                                              : Color(0xffCA0000),
                                                          fontSize: 13.fSize,
                                                          fontWeight: FontWeight.w600,
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                },
                              ),
                              SizedBox(
                                height: 100.h,
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
            ],
          ),
        );
      }),
    );
  }

  Column _buildField({required String title, required String value, bool isStatus = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
          width: 60.w,
          child: Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 11.fSize,
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
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
