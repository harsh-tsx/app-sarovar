import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/presentation/resetpassword_screen/models/resetpassword_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ResetpasswordScreen.
///
/// This class manages the state of the ResetpasswordScreen, including the
/// current resetpasswordModelObj
class ResetpasswordController extends GetxController {
  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  Rx<ResetpasswordModel> resetpasswordModelObj = ResetpasswordModel().obs;

  @override
  void onClose() {
    super.onClose();
    passwordController.dispose();
    confirmpasswordController.dispose();
  }
}
