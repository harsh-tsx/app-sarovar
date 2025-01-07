import 'package:app_1point2_store/presentation/signin_options_screen/signin_options_controller.dart';
import 'package:app_1point2_store/widgets/custom_elevated_button.dart';
import 'package:app_1point2_store/widgets/social_buttons/social_button_list.dart';
import 'package:app_1point2_store/widgets/social_buttons/social_button_view.dart';
import 'package:flutter/material.dart';
import 'package:app_1point2_store/core/app_export.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otpless_flutter/otpless_flutter.dart';

class SignInOptionsScreen extends GetWidget<SignInOptionsController> {
  SignInOptionsScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgSignInOptionsBg,
              width: SizeUtils.width,
              height: SizeUtils.height,
              fit: BoxFit.cover,
            ),
            Container(
              width: SizeUtils.width,
              height: SizeUtils.height,
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgIconApp,
                        width: 96.w,
                        height: 79.h,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Welcome To",
                                style: theme.textTheme.titleLarge!.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 36.fSize,
                                ),
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Reward App',
                                      style: theme.textTheme.titleLarge!
                                          .copyWith(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 36.fSize,
                                              color: Color(0xff32269E)),
                                    ),
                                    TextSpan(
                                      text: '-',
                                      style:
                                          theme.textTheme.titleLarge!.copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 36.fSize,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                "Your Personalized",
                                style: theme.textTheme.titleLarge!.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 36.fSize,
                                ),
                              ),
                              Text(
                                "Football News",
                                style: theme.textTheme.titleLarge!.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 36.fSize,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: SizedBox(),
                    ),
                    Padding(
                      padding: EdgeInsets.all(40.w),
                      child: Column(
                        children: [
                          CustomElevatedButton(
                            onPressed: () {
                              controller.initiateAuth();
                            },
                            height: 50.h,
                            buttonStyle: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Color(0xffEDEDEE)),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(55),
                                ),
                              ),
                            ),
                            text: "Continue With Google",
                            leftIcon: Row(
                              children: [
                                SizedBox(
                                  width: 30.w,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgIconGoogle,
                                  width: 30.w,
                                  height: 30.w,
                                ),
                                SizedBox(
                                  width: 20.w,
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade500,
                                  blurRadius: 5.0, // soften the shadow
                                  spreadRadius: 0.9, //extend the shadow
                                  offset: Offset(
                                    0.0, // Move to right 10  horizontally
                                    3.0, // Move to bottom 10 Vertically
                                  ),
                                )
                              ],
                            ),
                            buttonTextStyle:
                                theme.textTheme.titleLarge!.copyWith(
                              color: Colors.black,
                              fontSize: 16.fSize,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 19.h,
                          ),
                          CustomElevatedButton(
                            height: 50.h,
                            buttonStyle: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Color(0xff1877F2)),
                            ),
                            text: "Continue With Facebook",
                            leftIcon: Row(
                              children: [
                                SizedBox(
                                  width: 30.w,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgIconFb,
                                  width: 30.w,
                                  height: 30.w,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 20.w,
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade500,
                                  blurRadius: 5.0, // soften the shadow
                                  spreadRadius: 0.9, //extend the shadow
                                  offset: Offset(
                                    0.0, // Move to right 10  horizontally
                                    3.0, // Move to bottom 10 Vertically
                                  ),
                                )
                              ],
                            ),
                            buttonTextStyle:
                                theme.textTheme.titleLarge!.copyWith(
                              color: Colors.white,
                              fontSize: 16.fSize,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 19.h,
                          ),
                          CustomElevatedButton(
                            height: 50.h,
                            buttonStyle: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                Colors.black,
                              ),
                            ),
                            text: "Continue With Apple",
                            leftIcon: Row(
                              children: [
                                SizedBox(
                                  width: 30.w,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgIconApple,
                                  width: 30.w,
                                  height: 30.w,
                                  color: Colors.white,
                                  fit: BoxFit.contain,
                                ),
                                SizedBox(
                                  width: 20.w,
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade500,
                                  blurRadius: 5.0, // soften the shadow
                                  spreadRadius: 0.9, //extend the shadow
                                  offset: Offset(
                                    0.0, // Move to right 10  horizontally
                                    3.0, // Move to bottom 10 Vertically
                                  ),
                                )
                              ],
                            ),
                            buttonTextStyle:
                                theme.textTheme.titleLarge!.copyWith(
                              color: Colors.white,
                              fontSize: 16.fSize,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 19.h,
                          ),
                          CustomElevatedButton(
                            height: 50.h,
                            onPressed: () {
                              Get.toNamed(AppRoutes.loginScreen);
                            },
                            buttonStyle: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                appTheme.primaryYellow,
                              ),
                            ),
                            text: "Continue With Phone",
                            leftIcon: Row(
                              children: [
                                SizedBox(
                                  width: 30.w,
                                ),
                                Icon(
                                  Icons.call,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  width: 20.w,
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade500,
                                  blurRadius: 5.0, // soften the shadow
                                  spreadRadius: 0.9, //extend the shadow
                                  offset: Offset(
                                    0.0, // Move to right 10  horizontally
                                    3.0, // Move to bottom 10 Vertically
                                  ),
                                )
                              ],
                            ),
                            buttonTextStyle:
                                theme.textTheme.titleLarge!.copyWith(
                              color: Colors.black,
                              fontSize: 16.fSize,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20.w,
                        right: 20.w,
                        bottom: 10.h,
                      ),
                      child: Text(
                        "By creating an account or using our services, you agree to our Terms & Conditions.",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.fSize,
                            fontFamily: "Poppins"),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
