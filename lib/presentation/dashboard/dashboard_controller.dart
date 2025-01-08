import 'dart:ui';

import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/core/controllers/auth.controller.dart';
import 'package:app_1point2_store/core/utils/app_utils.dart';
import 'package:app_1point2_store/presentation/dashboard/add_order/add_order.dart';
import 'package:app_1point2_store/presentation/dashboard/home_screen/home_screen.dart';
import 'package:app_1point2_store/presentation/dashboard/home_screen/models/home_model.dart';
import 'package:app_1point2_store/presentation/dashboard/offer_screen/offer_screen.dart';
import 'package:app_1point2_store/presentation/dashboard/qr_scanner_screen/qr_scanner_screen.dart';
import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

/// A controller class for the HomeScreen.
///
/// This class manages the state of the HomeScreen, including the
/// current homeModelObj
///
enum BottomNavEnum {
  Home,
  Matches,
  Bookmarks,
  Tabs,
}

class BottomNavMenuModel {
  BottomNavMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
    required this.height,
    required this.width,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomNavEnum type;

  double width;

  double height;
}

List<Widget> bottomNavWidgetList = [
  HomeScreen(),
  OfferScreen(),
  AddOrderScreen(),
  QrScannerScreen(),
  QrScannerScreen(),
];

class DashboardController extends AuthController {
  TextEditingController searchController = TextEditingController();

  Rx<HomeModel> homeModelObj = HomeModel().obs;

  List<BottomNavMenuModel> bottomNavMenuList = [
    BottomNavMenuModel(
      icon: ImageConstant.homeIcon,
      activeIcon: ImageConstant.imgNavHomePrimary,
      title: "Home",
      type: BottomNavEnum.Home,
      width: 20.w,
      height: 20.w,
    ),
    BottomNavMenuModel(
      icon: ImageConstant.ftbIcon,
      activeIcon: ImageConstant.ftbIcon,
      title: "History",
      type: BottomNavEnum.Matches,
      width: 20.w,
      height: 20.w,
    ),
    BottomNavMenuModel(
      icon: ImageConstant.ftbIcon,
      activeIcon: ImageConstant.ftbIcon,
      title: "",
      type: BottomNavEnum.Matches,
      width: 20.w,
      height: 20.w,
    ),
    BottomNavMenuModel(
      icon: ImageConstant.catelogueIcon,
      activeIcon: ImageConstant.catelogueIcon,
      title: "Requests",
      type: BottomNavEnum.Bookmarks,
      width: 25.w,
      height: 25.w,
    ),
    BottomNavMenuModel(
      icon: ImageConstant.tabsIcon,
      activeIcon: ImageConstant.tabsIcon,
      title: "Complaint",
      type: BottomNavEnum.Tabs,
      width: 20.w,
      height: 20.w,
    )
  ];

  RxInt selectedIndex = 0.obs;

  GlobalKey keyButton1 = GlobalKey();
  GlobalKey keyButton2 = GlobalKey();
  GlobalKey keyButton3 = GlobalKey();
  GlobalKey keyButton4 = GlobalKey();
  GlobalKey keyButton5 = GlobalKey();

  GlobalKey keyBottomNavigation1 = GlobalKey();
  GlobalKey keyBottomNavigation2 = GlobalKey();
  GlobalKey keyBottomNavigation3 = GlobalKey();

  late TutorialCoachMark tutorialCoachMark;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }

  @override
  void onInit() {
    super.onInit();
  }

  void handlBottomNavChange(int index) {
    // if (getToken() == null && index > 0) {
    //   Get.toNamed(AppRoutes.loginwithphoneScreen);
    //   return;
    // }
    selectedIndex.value = index;

    if (index == 3) {}

    if (index == 4) {}

    update();
  }
}
