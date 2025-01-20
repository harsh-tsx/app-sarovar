import 'package:app_1point2_store/core/controllers/auth.controller.dart';
import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/core/utils/Toast.dart';
import 'package:app_1point2_store/data/apiClient/api_client.dart';
import 'package:app_1point2_store/swagger_generated_code/store_api.swagger.dart';
import 'package:flutter/material.dart';

/// A controller class for the HomeScreen.
///
/// This class manages the state of the HomeScreen, including the
/// current homeModelObj
class RequestScreenController extends AuthController {
  var forecastList = <EmployeeStoreForecastGet$Response$Data$Item>[].obs;
  late DateTime selectedDate = DateTime.now();

  TextEditingController waterCan = TextEditingController();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getForecastList(0, 10, DateTime.now().toString());
  }

  getForecastList(page, size, date) async {
    forecastList.clear();

    var request = await ApiClient.employeeStoreForecastGet(
        page: page.toString(), size: size.toString(), date: date);
    print("getForecastList request: ${request.body}");
    if (!(request.body?.status ?? false)) {
      return;
    }

    forecastList.addAll(request.body?.data ?? []);
    update();
  }

  addForecast() async {
    Toast.loading("Requesting....");
    var request = await ApiClient.employeeStoreForecastPost(
        body: EmployeeStoreForecastPost$RequestBody(
            watercans: double.parse(waterCan.text),
            date: selectedDate.toString()));

    if (!(request.body?.status ?? false)) {
      Toast.error(request.body?.message);
      return;
    }

    Toast.success(request.body?.message);
    waterCan.clear();
    getForecastList(0, 10, selectedDate.toString());
  }

  handleDateUpdate(date) {
    selectedDate = date;
    update();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
