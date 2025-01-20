import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/core/utils/Toast.dart';
import 'package:flutter/material.dart';

import 'dashboard_controller.dart';

// ignore_for_file: must_be_immutable
class Dashboard extends GetWidget<DashboardController> {
  Dashboard({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GetBuilder<DashboardController>(builder: (_context) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: appTheme.gray50,
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
              Get.toNamed(AppRoutes.addOrderScreen);
            },
            child: CustomImageView(
              imagePath: ImageConstant.bottomCenterIcon,
              width: 300.w,
            ),
            elevation: 0.0,
            backgroundColor: Colors.transparent,
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.miniCenterDocked,

          bottomNavigationBar: Container(
            height: 70.h,
            decoration: BoxDecoration(
              color: appTheme.primaryYellow,
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
              backgroundColor: appTheme.primaryYellow,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedFontSize: 0,
              elevation: 0,
              currentIndex: controller.selectedIndex.value,
              type: BottomNavigationBarType.fixed,
              items:
                  List.generate(controller.bottomNavMenuList.length, (index) {
                return BottomNavigationBarItem(
                  icon: Container(
                    width: Get.width / 5,
                    // height: 70.h,
                    decoration: AppDecoration.fillOnError
                        .copyWith(color: appTheme.primaryYellow),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        controller.bottomNavMenuList[index].title!.isNotEmpty
                            ? Padding(
                                padding: EdgeInsets.only(),
                                child: CustomImageView(
                                  imagePath:
                                      controller.bottomNavMenuList[index].icon,
                                  height: controller
                                      .bottomNavMenuList[index].height,
                                  width:
                                      controller.bottomNavMenuList[index].width,
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
                            style:
                                CustomTextStyles.titleMediumGray50001.copyWith(
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
                    decoration: AppDecoration.fillOnError
                        .copyWith(color: appTheme.primaryYellow),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(),
                        ),
                        Column(
                          children: [
                            controller
                                    .bottomNavMenuList[index].title!.isNotEmpty
                                ? CustomImageView(
                                    imagePath: controller
                                        .bottomNavMenuList[index].activeIcon,
                                    height: controller
                                        .bottomNavMenuList[index].height,
                                    width: controller
                                        .bottomNavMenuList[index].width,
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
                                style: CustomTextStyles.titleMediumGray50001
                                    .copyWith(
                                  fontSize: 13.fSize,
                                  color: appTheme.primaryBlue,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Container(),
                        ),
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
              onTap: controller.handlBottomNavChange,
            ),
          ),
        );
      }),
    );
  }

  /// Section Widget

  ///Handling route based on bottom click actions
}
