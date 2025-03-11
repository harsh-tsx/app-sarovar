import 'dart:async';

import 'package:app_1point2_store/configs/env.dart';
import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/core/utils/app_utils.dart';
import 'package:app_1point2_store/core/utils/types.dart';
import 'package:app_1point2_store/presentation/login_screen/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  var controller = isControllerRegistered<LoginController>(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: SizeUtils.height,
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageConstant.pageBg),
            fit: BoxFit.cover,
          ),
          // gradient: LinearGradient(
          //   begin: Alignment.topCenter,
          //   end: Alignment.bottomCenter,
          //   colors: [theme.primaryColor, appTheme.black900],
          // ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 80.h),
              GestureDetector(
                onPanCancel: controller.cancelTimer,
                onPanDown: controller.handleTimer,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.appLogo,
                      width: 216.w,
                      height: 95.h,
                      fit: BoxFit.contain,
                    ),
                    Env.name == "Test"
                        ? Text(
                            "TEST",
                            style: GoogleFonts.poppins(
                              fontSize: 18.fSize,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        : Container(),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                'Sign in to your Account',
                style: GoogleFonts.poppins(
                  fontSize: 22.fSize,
                  fontWeight: FontWeight.bold,
                  color: appTheme.black900,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                'Enter your email and password to log in',
                style: GoogleFonts.poppins(
                  fontSize: 12.fSize,
                  fontWeight: FontWeight.w600,
                  color: appTheme.black900,
                ),
              ),
              SizedBox(height: 32.h),
              Container(
                padding: EdgeInsets.all(24.w),
                decoration: BoxDecoration(
                  color: Color(0xffE4DABA),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    TextFormField(
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                      ),
                      controller: controller.id,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "ID",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: theme.primaryColor),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: theme.primaryColor),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintStyle: GoogleFonts.poppins(color: Colors.grey),
                      ),
                    ),
                    SizedBox(height: 16.h),
                    Obx(
                      () => TextFormField(
                        controller: controller.password,
                        obscureText: controller.showPassword.value,
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: "Password",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: theme.primaryColor),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: theme.primaryColor),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintStyle: GoogleFonts.poppins(color: Colors.grey),
                          suffixIcon: InkWell(
                            onTap: () {
                              controller.showPassword.value = !controller.showPassword.value;
                            },
                            child: controller.showPassword.value ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.h),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     Row(
                    //       children: [
                    //         Obx(
                    //           () => Checkbox(
                    //             value: controller.rememberMe.value,
                    //             onChanged: (value) {
                    //               controller.rememberMe.value = !controller.rememberMe.value;
                    //             },
                    //             side: BorderSide(color: Colors.grey),
                    //             fillColor: WidgetStatePropertyAll(Colors.white),
                    //           ),
                    //         ),
                    //         Text(
                    //           'Remember me',
                    //           style: GoogleFonts.poppins(),
                    //         ),
                    //       ],
                    //     ),
                    // TextButton(
                    //   onPressed: () {},
                    //   child: Text(
                    //     'Forgot Password ?',
                    //     style: GoogleFonts.poppins(color: Colors.black),
                    //   ),
                    // ),
                    //   ],
                    // ),
                    SizedBox(height: 16.h),
                    ElevatedButton(
                      onPressed: controller.onSubmit,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: appTheme.black900,
                        minimumSize: Size(double.infinity, 48.w),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color(0xff375DFB),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 30.h),
                      ),
                      child: Text(
                        'Log In',
                        style: GoogleFonts.poppins(color: theme.primaryColor),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32.h),
            ],
          ),
        ),
      ),
    );
  }
}
