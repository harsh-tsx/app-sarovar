import 'dart:io';

import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/core/utils/Toast.dart';
import 'package:app_1point2_store/core/utils/app_utils.dart';
import 'package:app_1point2_store/core/utils/types.dart';
import 'package:app_1point2_store/presentation/dashboard/add_order/add_order.controller.dart';
import 'package:app_1point2_store/widgets/custom_elevated_button.dart';
import 'package:app_1point2_store/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class AddOrderScreen extends StatefulWidget {
  AddOrderScreen({super.key});

  @override
  State<AddOrderScreen> createState() => _AddOrderScreenState();
}

class _AddOrderScreenState extends State<AddOrderScreen> {
  var controller = isControllerRegistered<AddOrderController>(AddOrderController());
  var type = Get.arguments['type'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<AddOrderController>(
        builder: (_context) {
          if (controller.loading.value) {
            return Container(
              alignment: Alignment.center,
              width: SizeUtils.width,
              height: SizeUtils.height,
              decoration: BoxDecoration(
                color: Color(0xffE4DABA),
              ),
              child: Center(
                child: CircularProgressIndicator(
                  color: Colors.black,
                ),
              ),
            );
          }
          return Container(
            alignment: Alignment.center,
            width: SizeUtils.width,
            height: SizeUtils.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImageConstant.pageBg),
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: SizeUtils.width,
                    height: SizeUtils.height,
                    margin: EdgeInsets.only(top: 50.h),
                    decoration: BoxDecoration(
                      color: Color(0xffE4DABA),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 4.0,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          "Today's Order",
                          style: GoogleFonts.poppins(
                            fontSize: 20.fSize,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          width: SizeUtils.width.percent(50),
                          padding: EdgeInsets.all(10.w),
                          decoration: BoxDecoration(
                            color: appTheme.primaryYellow,
                            borderRadius: BorderRadius.circular(11),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.25),
                                blurRadius: 4.0,
                                offset: Offset(1, -3),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "${controller.user.value.store?.name}",
                                style: GoogleFonts.poppins(
                                  fontSize: 24.fSize,
                                  color: appTheme.black900,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "${controller.user.value.store?.code}",
                                style: GoogleFonts.poppins(
                                  fontSize: 16.fSize,
                                  color: appTheme.black900,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Container(
                          // height: SizeUtils.height.percent(50),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              controller.activeOrder.value.id != null && type == "IN"
                                  ? Column(
                                      children: [
                                        Container(
                                          width: SizeUtils.width.percent(40),
                                          height: SizeUtils.height.percent(35),
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.black, width: 1),
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                width: Get.width * .45,
                                                height: 40.h,
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                  color: Colors.black,
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
                                                      style: GoogleFonts.poppins(
                                                        fontSize: 20.fSize,
                                                        fontWeight: FontWeight.bold,
                                                        color: appTheme.primaryYellow,
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
                                              CustomImageView(
                                                width: SizeUtils.width.percent(40),
                                                imagePath: ImageConstant.can,
                                                fit: BoxFit.contain,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Obx(
                                              () => Text(
                                                "${(controller.activeOrder.value.employeeOrder ?? []).length}/${(controller.activeOrder.value.watercans ?? 0.0).toInt()}",
                                                style: GoogleFonts.poppins(
                                                  fontSize: 24.fSize,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                            IconButton(
                                              iconSize: 40.w,
                                              color: Colors.black,
                                              style: ButtonStyle(
                                                backgroundColor: WidgetStatePropertyAll(Colors.black),
                                              ),
                                              onPressed: () {
                                                // Get.toNamed(AppRoutes.qrScanScreen);
                                                (controller.activeOrder.value.employeeOrder ?? []).length !=
                                                        (controller.activeOrder.value.watercans ?? 0.0).toInt()
                                                    ? controller.scanQR(mounted)
                                                    : null;
                                              },
                                              icon: Icon(
                                                Icons.qr_code_scanner,
                                                color: (controller.activeOrder.value.employeeOrder ?? []).length !=
                                                        (controller.activeOrder.value.watercans ?? 0.0).toInt()
                                                    ? Colors.green
                                                    : Colors.grey,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10.h,
                                            ),
                                            Text(
                                              "Scan",
                                              style: GoogleFonts.poppins(
                                                fontSize: 16.fSize,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    )
                                  : type == "IN"
                                      ? Container(
                                          child: Text("No active order to scan In."),
                                        )
                                      : Container(),
                              type == "OUT"
                                  ? Column(
                                      children: [
                                        Container(
                                          width: SizeUtils.width.percent(40),
                                          height: SizeUtils.height.percent(35),
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.black, width: 1),
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                width: Get.width * .45,
                                                height: 40.h,
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                  color: Colors.black,
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
                                                      style: GoogleFonts.poppins(
                                                        fontSize: 20.fSize,
                                                        fontWeight: FontWeight.bold,
                                                        color: appTheme.primaryYellow,
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
                                              CustomImageView(
                                                width: SizeUtils.width.percent(40),
                                                imagePath: ImageConstant.emptyCan,
                                                fit: BoxFit.contain,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              "${(controller.activeReturnOrder.value.watercans ?? 0.0).toInt()}",
                                              style: GoogleFonts.poppins(
                                                fontSize: 24.fSize,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black,
                                              ),
                                            ),
                                            Container(
                                              width: 60.w,
                                              height: 60.w,
                                              padding: EdgeInsets.all(2),
                                              decoration: BoxDecoration(
                                                color: Color(0xffE4DABA),
                                                borderRadius: BorderRadius.circular(100),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.black.withOpacity(0.25),
                                                    blurRadius: 4.0,
                                                  ),
                                                ],
                                              ),
                                              child: IconButton(
                                                iconSize: 40.w,
                                                color: Colors.black,
                                                style: ButtonStyle(
                                                  backgroundColor: WidgetStatePropertyAll(Colors.black),
                                                ),
                                                onPressed: () {
                                                  // Get.toNamed(AppRoutes.qrScanScreen);
                                                  controller.scanQR(mounted, true);
                                                },
                                                icon: Icon(
                                                  Icons.qr_code_scanner,
                                                  color: Colors.red,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10.h,
                                            ),
                                            Text(
                                              "Scan",
                                              style: GoogleFonts.poppins(
                                                fontSize: 16.fSize,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    )
                                  : Container(
                                      height: SizeUtils.height.percent(50),
                                    )
                            ],
                          ),
                        ),

                        // Container(
                        //   height: SizeUtils.height.percent(50),
                        //   alignment: Alignment.center,
                        //   child: Obx(
                        //     () => controller.activeOrder.value.id != null
                        //         ? GridView.builder(
                        //             itemCount: (controller.activeOrder.value.employeeOrder ?? []).length,
                        //             shrinkWrap: true,
                        //             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        //                 crossAxisCount: controller.crossAxisCount.value,
                        //                 crossAxisSpacing: 2,
                        //                 mainAxisSpacing: 2),
                        //             itemBuilder: (BuildContext context, int index) {
                        //               var item = (controller.activeOrder.value.employeeOrder ?? [])[index];
                        //               var width = SizeUtils.width.percent(69 * 1 / controller.crossAxisCount.value);
                        //               var height = (300 * 1 / controller.crossAxisCount.value);

                        //               var fontSize = 20;
                        //               if (controller.crossAxisCount.value == 5) {
                        //                 fontSize = 10;
                        //               } else if (controller.crossAxisCount.value == 4) {
                        //                 fontSize = 12;
                        //               } else if (controller.crossAxisCount.value == 3) {
                        //                 fontSize = 14;
                        //               } else if (controller.crossAxisCount.value == 2) {
                        //                 fontSize = 16;
                        //               }

                        //               return InkWell(
                        //                 onTap: () {
                        //                   controller.canCount.value = index + 1;
                        //                   if (controller.canCount.value >= 5) {
                        //                     controller.crossAxisCount.value = 5;
                        //                   } else {
                        //                     controller.crossAxisCount.value = controller.canCount.value;
                        //                   }
                        //                 },
                        //                 child: Container(
                        //                   margin: EdgeInsets.all(10.w),
                        //                   alignment: Alignment.center,
                        //                   padding: EdgeInsets.all(8.w),
                        //                   child: Column(
                        //                     mainAxisAlignment: MainAxisAlignment.center,
                        //                     children: [
                        //                       CustomImageView(
                        //                         width: width,
                        //                         height: height,
                        //                         imagePath: ImageConstant.can,
                        //                         fit: BoxFit.contain,
                        //                       ),
                        //                       Text(
                        //                         "${item.watercan?.$id?.toInt()}",
                        //                         style: GoogleFonts.poppins(
                        //                           fontSize: fontSize.fSize,
                        //                           fontWeight: FontWeight.w600,
                        //                         ),
                        //                       )
                        //                     ],
                        //                   ),
                        //                 ),
                        //               );
                        //             },
                        //           )
                        //         : Container(),
                        //   ),
                        // ),
                        SizedBox(
                          height: 30.h,
                        ),
                        controller.activeOrder.value.id != null && type == "IN"
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Checkbox(
                                    value: controller.incomepleteDeliveries.value,
                                    onChanged: controller.hanldeIncompleteDeliveriesCheckBox,
                                    fillColor: WidgetStatePropertyAll(Colors.white),
                                  ),
                                  Text(
                                    "Incomplete Deliveries",
                                    style: GoogleFonts.poppins(
                                      color: Color(0xffCA0000),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.fSize,
                                    ),
                                  )
                                ],
                              )
                            : Container(),
                        SizedBox(
                          height: 5.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40.w),
                          child: ElevatedButton(
                            onPressed:
                                // (controller.activeOrder.value.id != null &&
                                //         (controller.activeOrder.value.employeeOrder ?? []).length !=
                                //             (controller.activeOrder.value.watercans ?? 0.0).toInt())
                                //     ? null
                                //     : (controller.activeReturnOrder.value.employeeOrder ?? []).length == 0
                                //         ? null
                                //         :
                                (controller.activeOrder.value.id != null &&
                                            ((((controller.activeOrder.value.employeeOrder ?? []).length ==
                                                        (controller.activeOrder.value.watercans ?? 0.0).toInt()) &&
                                                    !controller.incomepleteDeliveries.value) ||
                                                (((controller.activeOrder.value.employeeOrder ?? []).length <
                                                        (controller.activeOrder.value.watercans ?? 0.0).toInt()) &&
                                                    controller.incomepleteDeliveries.value))) ||
                                        (type == "OUT" &&
                                            (controller.activeReturnOrder.value.employeeOrder ?? []).length > 0)
                                    ? () async {
                                        if (controller.incomepleteDeliveries.value) {
                                          Get.dialog(
                                              barrierDismissible: false,
                                              name: "customdialog",
                                              barrierColor: Colors.black87,
                                              Dialog(
                                                backgroundColor: Colors.transparent,
                                                child: PopScope(
                                                  // onPopInvoked: () async => false,
                                                  child: Center(
                                                    child: Column(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Container(
                                                          height: 250.h,
                                                          decoration: BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius: BorderRadius.circular(20),
                                                          ),
                                                          child: Column(
                                                            mainAxisSize: MainAxisSize.max,
                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Container(
                                                                padding: EdgeInsets.symmetric(
                                                                    horizontal: 10.w, vertical: 20.h),
                                                                decoration: BoxDecoration(
                                                                  color: appTheme.primaryYellow,
                                                                  borderRadius: BorderRadius.only(
                                                                    topLeft: Radius.circular(20),
                                                                    topRight: Radius.circular(20),
                                                                  ),
                                                                ),
                                                                child: Row(
                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                  children: [
                                                                    Icon(
                                                                      Icons.warning_rounded,
                                                                      color: Color(0xffFD0505),
                                                                    ),
                                                                    Text(
                                                                      "Incomplete Deliveries",
                                                                      style: GoogleFonts.poppins(
                                                                        fontSize: 16.fSize,
                                                                        color: Colors.black,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                height: 30.h,
                                                              ),
                                                              GetBuilder<AddOrderController>(builder: (_context) {
                                                                return Column(
                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                  children: [
                                                                    Container(
                                                                      width: SizeUtils.width.percent(38),
                                                                      child: ListView.separated(
                                                                        shrinkWrap: true,
                                                                        separatorBuilder: (context, index) => SizedBox(
                                                                          height: 10.h,
                                                                        ),
                                                                        itemBuilder: (context, index) {
                                                                          var reason =
                                                                              incompleteDeliveriesresonList[index];
                                                                          return InkWell(
                                                                            onTap: () {
                                                                              controller.handleRemarkOptionChange(
                                                                                  reason.text);
                                                                            },
                                                                            child: Container(
                                                                              height: 40.h,
                                                                              padding: EdgeInsets.all(
                                                                                10.w,
                                                                              ),
                                                                              decoration: BoxDecoration(
                                                                                color: Colors.white,
                                                                                borderRadius: BorderRadius.circular(7),
                                                                              ),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                children: [
                                                                                  Checkbox(
                                                                                    value: controller
                                                                                        .incompleteDeliveriesresons
                                                                                        .contains(reason.text),
                                                                                    onChanged: (value) {
                                                                                      controller
                                                                                          .handleIncompleteDeliveriesReasons(
                                                                                              reason.text);
                                                                                    },
                                                                                    fillColor: WidgetStatePropertyAll(
                                                                                        Colors.white),
                                                                                  ),
                                                                                  Text(
                                                                                    reason.text,
                                                                                    style: GoogleFonts.poppins(
                                                                                      fontSize: 16.fSize,
                                                                                      fontWeight: FontWeight.w500,
                                                                                      color: Colors.black,
                                                                                    ),
                                                                                  )
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                        itemCount: incompleteDeliveriesresonList.length,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                );
                                                              }),
                                                              SizedBox(
                                                                height: 30.h,
                                                              ),
                                                              InkWell(
                                                                onTap: () async {
                                                                  Get.back();
                                                                  await Future.delayed(Duration.zero);
                                                                  handleOutSideDeliveries();
                                                                },
                                                                child: Container(
                                                                  padding: EdgeInsets.all(10),
                                                                  margin: EdgeInsets.all(1),
                                                                  decoration: BoxDecoration(
                                                                    color: Colors.black,
                                                                    borderRadius: BorderRadius.only(
                                                                      bottomLeft: Radius.circular(20),
                                                                      bottomRight: Radius.circular(20),
                                                                    ),
                                                                  ),
                                                                  child: Row(
                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                    children: [
                                                                      Text(
                                                                        "Submit Deliveries",
                                                                        style: GoogleFonts.poppins(
                                                                          fontSize: 16.fSize,
                                                                          color: appTheme.primaryYellow,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 10.h,
                                                        ),
                                                        InkWell(
                                                          onTap: () {
                                                            Get.back();
                                                          },
                                                          child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                            children: [
                                                              Icon(
                                                                Icons.close,
                                                                color: Colors.white,
                                                              ),
                                                              Text(
                                                                "Cancel",
                                                                style: GoogleFonts.poppins(
                                                                  color: Colors.white,
                                                                  fontSize: 14.fSize,
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ));
                                          return;
                                        }

                                        if (controller.outSide.value) {
                                          handleOutSideDeliveries();
                                          return;
                                        }
                                        controller.confirmOrder(
                                            controller.activeOrder.value.id, controller.activeReturnOrder.value.id);
                                        // controller.canCount.value = controller.canCount.value + 1;
                                        // if (controller.canCount.value >= 5) {
                                        //   controller.crossAxisCount.value = 5;
                                        // } else {
                                        //   controller.crossAxisCount.value =
                                        //       controller.canCount.value;
                                        // }
                                      }
                                    : null,
                            style: ElevatedButton.styleFrom(
                              disabledBackgroundColor: Color(0xffB0B0B0),
                              backgroundColor: appTheme.black900,
                              minimumSize: const Size(double.infinity, 48),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              padding: EdgeInsets.symmetric(
                                vertical: 30.h,
                              ),
                            ),
                            child: Text(
                              'Submit Deliveries',
                              style: GoogleFonts.poppins(
                                  color: (controller.activeOrder.value.id != null &&
                                              ((((controller.activeOrder.value.employeeOrder ?? []).length ==
                                                          (controller.activeOrder.value.watercans ?? 0.0).toInt()) &&
                                                      !controller.incomepleteDeliveries.value) ||
                                                  (((controller.activeOrder.value.employeeOrder ?? []).length <
                                                          (controller.activeOrder.value.watercans ?? 0.0).toInt()) &&
                                                      controller.incomepleteDeliveries.value))) ||
                                          (type == "OUT" &&
                                              (controller.activeReturnOrder.value.employeeOrder ?? []).length > 0)
                                      ? theme.primaryColor
                                      : Color(0xff474747)),
                            ),
                          ),
                        ),
                        // (controller.activeOrder.value.employeeOrder ?? []).length !=
                        //         (controller.activeOrder.value.watercans ?? 0.0).toInt()
                        //     ? IconButton(
                        //         onPressed: () {
                        //           // Get.toNamed(AppRoutes.qrScanScreen);
                        //           controller.scanQR(mounted);
                        //         },
                        //         icon: CustomImageView(
                        //           imagePath: ImageConstant.bottomCenterIcon,
                        //         ),
                        //       )
                        //     : Container()
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  handleOutSideDeliveries() {
    Get.dialog(
        barrierDismissible: false,
        name: "customdialog",
        barrierColor: Colors.black87,
        Dialog(
          backgroundColor: Colors.transparent,
          child: PopScope(
            // onPopInvoked: () async => false,
            child: Center(
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    // color: Colors.transparent,
                    borderRadius: BorderRadius.circular(20)),
                child: Obx(
                  () => controller.photo.value != null
                      ? Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.warning_rounded,
                              color: Color(0xffFD0505),
                            ),
                            Text(
                              "You are not at your store",
                              style: GoogleFonts.poppins(
                                fontSize: 24.fSize,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              width: SizeUtils.width.percent(80),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                children: [
                                  Image.file(
                                    File(controller.photo.value?.path ?? ""),
                                    height: 200.h,
                                  ),
                                  Text(
                                      "Reason - ${controller.remarkOption.value.isEmpty ? controller.remark.text : controller.remarkOption.value}"),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        width: SizeUtils.width.percent(35),
                                        child: CustomOutlinedButton(
                                          onPressed: () {
                                            controller.photo.value = null;
                                          },
                                          text: "Cancel",
                                          buttonTextStyle: GoogleFonts.poppins(
                                            color: Colors.black,
                                          ),
                                          buttonStyle: ButtonStyle(
                                            side: WidgetStateProperty.all(
                                              BorderSide(
                                                color: appTheme.primaryYellow,
                                              ),
                                            ),
                                            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(Radius.circular(10)))),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: SizeUtils.width.percent(35),
                                        child: CustomElevatedButton(
                                          onPressed: () => controller.confirmOrder(
                                              controller.activeOrder.value.id, controller.activeReturnOrder.value.id),
                                          text: "Submit",
                                          buttonTextStyle: GoogleFonts.poppins(
                                            color: appTheme.primaryYellow,
                                          ),
                                          buttonStyle: ButtonStyle(
                                            backgroundColor: WidgetStatePropertyAll(Colors.black),
                                            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(Radius.circular(10)))),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      : Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.warning_rounded,
                              color: Color(0xffFD0505),
                            ),
                            Text(
                              "You are not at your store",
                              style: GoogleFonts.poppins(
                                fontSize: 24.fSize,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            GetBuilder<AddOrderController>(builder: (_context) {
                              return ListView.separated(
                                shrinkWrap: true,
                                separatorBuilder: (context, index) => SizedBox(
                                  height: 10.h,
                                ),
                                itemBuilder: (context, index) {
                                  var reason = resonList[index];
                                  return InkWell(
                                    onTap: () {
                                      controller.handleRemarkOptionChange(reason.text);
                                    },
                                    child: Container(
                                      width: SizeUtils.width.percent(70),
                                      height: 60.h,
                                      padding: EdgeInsets.all(
                                        10.w,
                                      ),
                                      decoration: BoxDecoration(
                                        color: reason.text == controller.remarkOption.value
                                            ? appTheme.primaryYellow
                                            : Colors.white,
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                      child: Row(
                                        children: [
                                          Icon(reason.icon),
                                          Text(
                                            reason.text,
                                            style: GoogleFonts.poppins(
                                              fontSize: 14.fSize,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                },
                                itemCount: resonList.length,
                              );
                            }),
                            SizedBox(
                              height: 10.h,
                            ),
                            ListView.separated(
                              shrinkWrap: true,
                              separatorBuilder: (context, index) => SizedBox(
                                height: 10.h,
                              ),
                              itemBuilder: (context, index) {
                                return Container(
                                  width: SizeUtils.width.percent(70),
                                  height: 60.h,
                                  padding: EdgeInsets.all(
                                    10.w,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(Icons.edit_outlined),
                                      Container(
                                        width: SizeUtils.width.percent(65),
                                        child: TextField(
                                          textAlign: TextAlign.start,
                                          keyboardType: TextInputType.text,
                                          style: GoogleFonts.poppins(
                                            fontSize: 14.fSize,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                          controller: controller.remark,
                                          onChanged: (value) => controller.handleRemarkOptionChange(""),
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            fillColor: Colors.white,
                                            hintText: 'Write a message',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                              itemCount: 1,
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            controller.remarkOption.value.isNotEmpty || controller.remark.text.isNotEmpty
                                ? InkWell(
                                    onTap: controller.handleImage,
                                    child: Container(
                                      width: SizeUtils.width.percent(75),
                                      height: 60.h,
                                      padding: EdgeInsets.all(8.0.w),
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        border: Border.all(
                                          color: appTheme.primaryYellow,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            'Submit Deliveries',
                                            style: GoogleFonts.poppins(color: theme.primaryColor),
                                          ),
                                          Icon(
                                            Icons.photo_camera_outlined,
                                            color: Colors.white,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                : Container(),
                          ],
                        ),
                ),
              ),
            ),
          ),
        ));

    return;
  }
}
