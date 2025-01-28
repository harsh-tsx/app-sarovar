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
  var page = 0.obs;
  var size = 10.obs;

  TextEditingController waterCan = TextEditingController();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getForecastList();
  }

  getForecastList([int? givenPage]) async {
    if (givenPage != null && givenPage < page.value || givenPage! == 0) {
      forecastList.clear();
    }
    page.value = givenPage ?? page.value;

    var request = await ApiClient.employeeStoreForecastGet(
        page: page.value.toString(), size: size.value.toString(), date: selectedDate.toString());
    print("getForecastList request: ${request.body}");
    if (!(request.body?.status ?? false)) {
      return;
    }

    forecastList.addAll(request.body?.data ?? []);
    forecastList.addAll(request.body?.data ?? []);
    forecastList.addAll(request.body?.data ?? []);
    forecastList.addAll(request.body?.data ?? []);
    forecastList.addAll(request.body?.data ?? []);
    update();
  }

  addForecast() async {
    Toast.loading("Requesting....");
    var request = await ApiClient.employeeStoreForecastPost(
        body:
            EmployeeStoreForecastPost$RequestBody(watercans: int.parse(waterCan.text), date: selectedDate.toString()));

    if (!(request.body?.status ?? false)) {
      Toast.error(request.body?.message);
      return;
    }

    Toast.success(request.body?.message);
    waterCan.clear();
    getForecastList(0);
  }

  handleDateUpdate(date) {
    selectedDate = date;
    getForecastList(0);
    update();
  }

  handleCountChange(value) {
    if (value < 0) {
      waterCan.text = 0.toString();
    }
  }

  @override
  void onClose() {
    super.onClose();
  }
}
