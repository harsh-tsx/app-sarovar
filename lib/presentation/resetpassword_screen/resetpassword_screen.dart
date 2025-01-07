import 'package:flutter/material.dart';
import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/widgets/custom_elevated_button.dart';
import 'package:app_1point2_store/widgets/custom_text_form_field.dart';
import 'controller/resetpassword_controller.dart';
import 'package:app_1point2_store/core/utils/types.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/core/utils/validation_functions.dart';
import 'package:app_1point2_store/widgets/custom_elevated_button.dart';
import 'package:app_1point2_store/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ResetpasswordScreen extends GetWidget<ResetpasswordController> {
  const ResetpasswordScreen({Key? key})
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
                        "Reset Password",
                        style: theme.textTheme.headlineLarge,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Padding(
                      padding: EdgeInsets.only(left: 1.w),
                      child: Text(
                        "Choose a new password for your account.",
                        style: CustomTextStyles.titleMediumSemiBold,
                      ),
                    ),
                    SizedBox(height: 32.h),
                    Text(
                      "Password",
                      style: theme.textTheme.titleSmall,
                    ),
                    SizedBox(height: 6.h),
                    CustomTextFormField(
                      controller: controller.passwordController,
                      textInputAction: TextInputAction.done,
                      hintText: "*******",
                      hintStyle: CustomTextStyles.bodyMediumBluegray10001,
                      suffix: InkWell(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 19.w,
                            vertical: 18.h,
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgEye,
                            height: 13.h,
                            width: 19.w,
                          ),
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: 50.h,
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 6.h),
                    Text(
                      "Confirm Password",
                      style: theme.textTheme.titleSmall,
                    ),
                    SizedBox(height: 6.h),
                    CustomTextFormField(
                      controller: controller.passwordController,
                      textInputAction: TextInputAction.done,
                      hintText: "*******",
                      hintStyle: CustomTextStyles.bodyMediumBluegray10001,
                      suffix: InkWell(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 19.w,
                            vertical: 18.h,
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgEye,
                            height: 13.h,
                            width: 19.w,
                          ),
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: 50.h,
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 32.h),
                    CustomElevatedButton(
                      width: Get.width,
                      text: "Reset Password",
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
