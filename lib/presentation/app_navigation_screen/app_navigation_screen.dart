import 'package:flutter/material.dart';
import 'package:app_1point2_store/core/app_export.dart';
import 'controller/app_navigation_controller.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: Get.width,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "Main Splash Screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashmainScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Secnd Splash Screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashtwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Third Splash Screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashthreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Login With Phone",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginwithphoneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Otp",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.otpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Register",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.registerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Login",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "ForgotPassword",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.forgotpasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "ResetPassword",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.resetpasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "EditProfile",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.editprofileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Home",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.dashboard),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5),
          Divider(
            height: 1,
            thickness: 1,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(height: 5),
            Divider(
              height: 1,
              thickness: 1,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
