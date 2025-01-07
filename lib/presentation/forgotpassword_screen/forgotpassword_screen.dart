import 'package:app_1point2_store/core/utils/types.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/core/utils/validation_functions.dart';
import 'package:app_1point2_store/widgets/custom_elevated_button.dart';
import 'package:app_1point2_store/widgets/custom_text_form_field.dart';
import 'controller/forgotpassword_controller.dart';

// ignore_for_file: must_be_immutable
class ForgotpasswordScreen extends GetWidget<ForgotpasswordController> {
  ForgotpasswordScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          height: SizeUtils.height,
          width: Get.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgRegister,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: Get.height.percent(50),
                padding: EdgeInsets.symmetric(
                  horizontal: 18.w,
                  vertical: 24.h,
                ),
                decoration: AppDecoration.gradientOnErrorToOrange.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL20,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 36.h),
                    Padding(
                      padding: EdgeInsets.only(left: 1.w),
                      child: Text(
                        "Forgot Password",
                        style: theme.textTheme.headlineLarge,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Padding(
                      padding: EdgeInsets.only(left: 1.w),
                      child: Text(
                        "Enter the phone number you send to create your account so we can send you a link for reseting your password",
                        style: CustomTextStyles.titleMediumSemiBold,
                      ),
                    ),
                    SizedBox(height: 32.h),
                    Text(
                      "lbl_phone_number".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                    SizedBox(height: 6.h),
                    CustomTextFormField(
                      controller: controller.phoneNumberController,
                      hintText: "msg_enter_your_phone2".tr,
                      hintStyle: CustomTextStyles.bodyMediumBluegray10001,
                      textInputType: TextInputType.phone,
                      validator: (value) {
                        if (!isValidPhone(value)) {
                          return "err_msg_please_enter_valid_phone_number".tr;
                        }
                        return null;
                      },
                      suffixConstraints: BoxConstraints(
                        maxHeight: 50.h,
                      ),
                      textInputAction: TextInputAction.done,
                    ),
                    SizedBox(height: 32.h),
                    CustomElevatedButton(
                      width: Get.width,
                      text: "Send",
                      buttonStyle: CustomButtonStyles.outlinePrimary,
                      alignment: Alignment.topCenter,
                      onPressed: () {
                        Get.toNamed(AppRoutes.dashboard);
                      },
                    ),
                    SizedBox(height: 32.h),
                    Center(
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Back to",
                              style: CustomTextStyles.bodyLargeffe73035,
                            ),
                            TextSpan(
                              text: "  ".tr,
                            ),
                            TextSpan(
                              text: "Login",
                              style: CustomTextStyles.titleMediumffe73035,
                              recognizer: new TapGestureRecognizer()
                                ..onTap =
                                    () => Get.toNamed(AppRoutes.loginScreen),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
