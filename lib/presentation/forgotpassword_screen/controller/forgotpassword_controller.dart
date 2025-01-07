import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/presentation/forgotpassword_screen/models/forgotpassword_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ForgotpasswordScreen.
///
/// This class manages the state of the ForgotpasswordScreen, including the
/// current forgotpasswordModelObj
class ForgotpasswordController extends GetxController {
  TextEditingController phoneNumberController = TextEditingController();

  Rx<ForgotpasswordModel> forgotpasswordModelObj = ForgotpasswordModel().obs;

  @override
  void onClose() {
    super.onClose();
    phoneNumberController.dispose();
  }
}
