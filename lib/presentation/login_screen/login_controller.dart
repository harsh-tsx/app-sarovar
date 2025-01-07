import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/core/utils/Toast.dart';
import 'package:app_1point2_store/core/utils/api_client.dart';
import 'package:app_1point2_store/core/utils/app_utils.dart';
import 'package:flutter/material.dart';

class LoginController extends GetxController {
  var phone = TextEditingController();
  var phoneCode = "+91".obs;
  var password = TextEditingController();

  var showPassword = false.obs;

  onSubmit() async {
    try {
      print("MobileNUmber: ${phone.text}");
      Get.toNamed(AppRoutes.otpScreen, arguments: {
        "phone": phone.text,
      });
    } catch (err, s) {
      print(err);
      print(s);
    }
  }

  forgotPassword() async {}
}
