import 'package:app_1point2_store/core/controllers/auth.controller.dart';
import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/core/utils/api_client.dart';
import 'package:app_1point2_store/presentation/dashboard/home_screen/models/home_model.dart';
import 'package:flutter/material.dart';

import '../models/userprofilelistsection_item_model.dart';

/// A controller class for the HomeScreen.
///
/// This class manages the state of the HomeScreen, including the
/// current homeModelObj
class HomeController extends AuthController {
  TextEditingController searchController = TextEditingController();

  Rx<HomeModel> homeModelObj = HomeModel().obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  init() {}

  getNews() {
    print("CALLING NEWS API");
  }

  getCategoryData(String page) {}

  getLatestFixtures() {
    print("CALLING FIXTURE LATEST API");
  }

  getPastFixtures() {
    print("CALLING FIXTURE LATEST API");
  }

  //* This method will convert api data into UserprofilelistsectionItemModel
  //* It is used in online astrologer list widget at home screen

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
