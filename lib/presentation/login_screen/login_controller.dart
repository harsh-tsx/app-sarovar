import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/core/utils/Toast.dart';
import 'package:app_1point2_store/core/utils/api_client.dart';
import 'package:app_1point2_store/core/utils/app_utils.dart';
import 'package:app_1point2_store/data/apiClient/api_client.dart';
import 'package:app_1point2_store/swagger_generated_code/store_api.swagger.dart';
import 'package:flutter/material.dart';

class LoginController extends GetxController {
  var id = TextEditingController();
  var phoneCode = "+91".obs;
  var password = TextEditingController();
  var rememberMe = false.obs;

  var showPassword = false.obs;

  onSubmit() async {
    try {
      Toast.loading("Logging you in");
      var request = await ApiClient.employeeStoreAuthLoginPost(
          body: EmployeeStoreAuthLoginPost$RequestBody(
              id: id.text, password: password.text));
      print("MobileNUmber: ${id.text}");
      if (!(request.body?.status ?? false)) {
        Toast.error("${request.body?.message}");
        return;
      }

      Toast.success(request.body?.message ?? "");

      await setToken("${request.body?.data?.token}");
      Get.offAllNamed(AppRoutes.dashboard);
    } catch (err, s) {
      Toast.error("${err}");

      print(err);
      print(s);
    }
  }

  forgotPassword() async {}
}
