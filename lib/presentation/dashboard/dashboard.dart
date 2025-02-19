import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/core/utils/Toast.dart';
import 'package:app_1point2_store/core/utils/app_utils.dart';
import 'package:app_1point2_store/presentation/complaiint/complaint.controller.dart';
import 'package:flutter/material.dart';

import 'dashboard_controller.dart';

// ignore_for_file: must_be_immutable
class Dashboard extends GetWidget<DashboardController> {
  Dashboard({Key? key})
      : super(
          key: key,
        );
  // var complaintController = isControllerRegistered<ComplaintController>(ComplaintController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (_context) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.pageBg,
        body: bottomNavWidgetList[controller.selectedIndex.value],
        // floatingActionButton: FloatingActionButton(
        //   elevation: 0,

        //   onPressed: () {
        //     // Define your action here
        //   },
        //   child: Icon(Icons.add),
        // ),
        floatingActionButton: FloatingActionButton(
          key: controller.keyButton3,
          onPressed: () {
            // controller.handlBottomNavChange(2);
            if (controller.outSide.value) {
              Toast.error("Your're outside of the Store!");
              // return;
            }
            Get.toNamed(AppRoutes.addOrderScreen, arguments: {"type": "IN"});
          },
          child: CustomImageView(
            imagePath: ImageConstant.bottomCenterIcon,
            width: 300.w,
          ),
          elevation: 0.0,
          backgroundColor: Colors.transparent,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,

        bottomNavigationBar:
            // Stack(
            //   clipBehavior: Clip.none,
            //   alignment: new FractionalOffset(.5, 1.0),
            //   children: [
            Container(
          height: 70.h,
          decoration: BoxDecoration(
            color: appTheme.primaryYellow,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                blurRadius: 4.0,
                spreadRadius: 2,
              ),
            ],
            // boxShadow: [
            //   BoxShadow(
            //     color: theme.colorScheme.primary.withOpacity(0.15),
            //     spreadRadius: 2,
            //     blurRadius: 2,
            //     offset: Offset(
            //       0,
            //       -6,
            //     ),
            //   ),
            // ],
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedFontSize: 0,
            elevation: 0,
            currentIndex: controller.selectedIndex.value,
            type: BottomNavigationBarType.fixed,
            items: List.generate(controller.bottomNavMenuList.length, (index) {
              return BottomNavigationBarItem(
                icon: Container(
                  width: Get.width / 5,
                  // height: 70.h,
                  decoration: AppDecoration.fillOnError.copyWith(color: Colors.transparent),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      controller.bottomNavMenuList[index].title!.isNotEmpty
                          ? Padding(
                              padding: EdgeInsets.only(),
                              child: CustomImageView(
                                imagePath: controller.bottomNavMenuList[index].icon,
                                height: controller.bottomNavMenuList[index].height,
                                width: controller.bottomNavMenuList[index].width,
                                color: Color(0xff1E1E1E),
                                margin: EdgeInsets.only(top: 8),
                              ),
                            )
                          : Container(),
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(

                            // bottom: 11,
                            ),
                        child: Text(
                          controller.bottomNavMenuList[index].title ?? "",
                          style: CustomTextStyles.titleMediumGray50001.copyWith(
                            fontSize: 12.fSize,
                            color: Colors.black26,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                activeIcon: Container(
                  height: 70.h,
                  width: Get.width / 5,
                  decoration: AppDecoration.fillOnError.copyWith(color: Colors.transparent),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Expanded(
                      //   child: Container(),
                      // ),
                      Column(
                        children: [
                          controller.bottomNavMenuList[index].title!.isNotEmpty
                              ? CustomImageView(
                                  imagePath: controller.bottomNavMenuList[index].activeIcon,
                                  height: controller.bottomNavMenuList[index].height,
                                  width: controller.bottomNavMenuList[index].width,
                                  // color: appTheme.primaryBlue,
                                  margin: EdgeInsets.only(top: 8),
                                )
                              : Container(),
                          SizedBox(
                            height: 10.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(),
                            child: Text(
                              controller.bottomNavMenuList[index].title ?? "",
                              style: CustomTextStyles.titleMediumGray50001.copyWith(
                                fontSize: 13.fSize,
                                color: appTheme.primaryBlue,
                              ),
                            ),
                          ),
                        ],
                      ),
                      // Expanded(
                      //   child: Container(),
                      // ),
                      controller.bottomNavMenuList[index].title!.isNotEmpty
                          ? Container(
                              height: 3,
                              color: appTheme.primaryYellow,
                            )
                          : Container()
                    ],
                  ),
                ),
                label: '',
              );
            }),
            onTap: (value) {
              // if (value == 4) {
              //   complaintController.handleCurrentTabChange("OUT");
              // }
              controller.handlBottomNavChange(value);
            },
          ),
        ),
        //     Positioned(
        //       bottom: 5.h,
        //       child: InkWell(
        //         onTap: () {
        //           // controller.handlBottomNavChange(2);
        //           if (controller.outSide.value) {
        //             Toast.error("Your're outside of the Store!");
        //             // return;
        //           }
        //           Get.toNamed(AppRoutes.addOrderScreen);
        //         },
        //         child: Column(
        //           mainAxisSize: MainAxisSize.min,
        //           mainAxisAlignment: MainAxisAlignment.start,
        //           children: [
        //             Container(
        //               decoration: BoxDecoration(
        //                   // boxShadow: [
        //                   //   BoxShadow(
        //                   //     color: Colors.black.withOpacity(0.25),
        //                   //     blurRadius: 4.0,
        //                   //     spreadRadius: 6,
        //                   //   ),
        //                   // ],
        //                   ),
        //               child: ClipRRect(
        //                 borderRadius: BorderRadius.circular(100),
        //                 child: Container(
        //                   child: CustomImageView(
        //                     imagePath: ImageConstant.bottomCenterIcon,
        //                     width: 80.w,
        //                     // height: 100.h,
        //                   ),
        //                 ),
        //               ),
        //             ),
        //             Text(
        //               "Scan",
        //               style: CustomTextStyles.titleMediumGray50001.copyWith(
        //                 fontSize: 12.fSize,
        //                 color: Colors.black26,
        //               ),
        //             ),
        //             SizedBox(
        //               height: 15.h,
        //             )
        //           ],
        //         ),
        //       ),
        //     )
        //   ],
        // ),
      );
    });
  }

  /// Section Widget

  ///Handling route based on bottom click actions
}
