import 'package:app_1point2_store/core/controllers/auth.controller.dart';
import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/core/utils/api_client.dart';
import 'package:app_1point2_store/data/apiClient/api_client.dart';
import 'package:app_1point2_store/presentation/dashboard/home_screen/models/home_model.dart';
import 'package:app_1point2_store/swagger_generated_code/store_api.swagger.dart';
import 'package:flutter/material.dart';

import '../models/userprofilelistsection_item_model.dart';

/// A controller class for the HomeScreen.
///
/// This class manages the state of the HomeScreen, including the
/// current homeModelObj
class HomeController extends AuthController {
  TextEditingController searchController = TextEditingController();

  Rx<HomeModel> homeModelObj = HomeModel().obs;
  var homeDashboard = EmployeeStoreDashboardHomeGet$Response$Data().obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  getHomeDashboardData(DateTime date) async {
    var request =
        await ApiClient.employeeStoreDashboardHomeGet(date: date.toString());
    print("request dashboard data: ${request.body}");

    homeDashboard.value =
        request.body?.data ?? EmployeeStoreDashboardHomeGet$Response$Data();
    update();
  }

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
