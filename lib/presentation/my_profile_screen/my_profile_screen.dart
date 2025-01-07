import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/core/utils/app_utils.dart';
import 'package:app_1point2_store/core/utils/size_utils.dart';
import 'package:app_1point2_store/core/utils/types.dart';
import 'package:app_1point2_store/presentation/GlobalWebview/GlobalWebviewScreen.dart';
import 'package:app_1point2_store/widgets/custom_drop_down.dart';
import 'package:app_1point2_store/widgets/custom_elevated_button.dart';
import 'package:app_1point2_store/widgets/custom_icon_button.dart';
import 'package:app_1point2_store/widgets/custom_outlined_button.dart';
import 'package:app_1point2_store/widgets/custom_text_form_field.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  final TextEditingController _dateController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2000),
          lastDate: DateTime(2101),
        ) ??
        DateTime.now();
    if (picked != null && picked != DateTime.now()) {
      setState(() {
        _dateController.text = picked.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Positioned(
              top: -690,
              left: -290,
              child: Container(
                width: 1000,
                height: 1000,
                decoration: BoxDecoration(
                  color: appTheme.primaryBlue,
                  borderRadius: BorderRadius.circular(1000),
                ),
              ),
            ),
            Positioned(
              top: -700,
              left: -300,
              child: Container(
                width: 1000,
                height: 1000,
                decoration: BoxDecoration(
                  color: appTheme.primaryYellow,
                  borderRadius: BorderRadius.circular(1000),
                ),
              ),
            ),
            Container(
              width: SizeUtils.width,
              height: SizeUtils.height,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AppBar(
                      actions: [
                        IconButton(
                          onPressed: () {
                            Get.toNamed(AppRoutes.profileScreen);
                          },
                          icon: Icon(
                            Icons.settings_outlined,
                            size: 30.fSize,
                            color: Colors.white,
                          ),
                        )
                      ],
                      leading: CustomImageView(
                        imagePath: ImageConstant.imgIconApp,
                        width: 50.w,
                        height: 50.w,
                      ),
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                    ),
                    Container(
                      width: 150.w,
                      height: 150.w,
                      decoration: BoxDecoration(
                          color: Color(0xff8266B1),
                          borderRadius: BorderRadius.circular(100)),
                      child: Icon(
                        Icons.person_outline,
                        size: 50.w,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    CustomElevatedButton(
                      width: 200.w,
                      height: 40.h,
                      onPressed: () {
                        Get.toNamed(AppRoutes.profileScreen);
                      },
                      buttonStyle: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                          Color(0xffeceaf4).withOpacity(0.2),
                        ),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100))),
                      ),
                      text: "Account",
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      buttonTextStyle: theme.textTheme.titleLarge!.copyWith(
                        color: Colors.white,
                        fontSize: 16.fSize,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 100.h,
                    ),
                    ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.w,
                        vertical: 0,
                      ),
                      children: [
                        InkWell(
                          onTap: () {
                            Get.toNamed(AppRoutes.bookMarkScreen);
                          },
                          child: Container(
                            height: 70.h,
                            decoration: BoxDecoration(
                              color: Color(0xffeceaf4),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 10.w, top: 10.h, bottom: 10.h),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.transparent,
                                        child: CustomImageView(
                                          imagePath:
                                              ImageConstant.bookmarksIcon,
                                        ), // Placeholder for the logo
                                      ),
                                      SizedBox(width: 10),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            'Bookmarks          ',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18.fSize,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  width: 80.w,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: appTheme.primaryPurple
                                          .withOpacity(0.3),
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      )),
                                  child: Icon(
                                    Icons.keyboard_arrow_right_outlined,
                                    color: appTheme.primaryPurple,
                                    size: 35.fSize,
                                  ), // Right star icon
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        InkWell(
                          onTap: () {
                            Get.toNamed(AppRoutes.membershipScreen);
                          },
                          child: Container(
                            height: 70.h,
                            decoration: BoxDecoration(
                              color: Color(0xffeceaf4),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 10.w, top: 10.h, bottom: 10.h),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.transparent,
                                        child: Icon(
                                          Icons.sports_soccer_outlined,
                                          color: Colors.black,
                                        ), // Placeholder for the logo
                                      ),
                                      SizedBox(width: 10),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            'Subscriptions    ',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18.fSize,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  width: 80.w,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: appTheme.primaryPurple
                                          .withOpacity(0.3),
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      )),
                                  child: Icon(
                                    Icons.keyboard_arrow_right_outlined,
                                    color: appTheme.primaryPurple,
                                    size: 35.fSize,
                                  ), // Right star icon
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(() => SafeArea(
                                  child: Scaffold(
                                    appBar: AppBar(),
                                    backgroundColor: Colors.white,
                                    body: GlobalWebviewScreen(
                                        "https://allstarsnews.ai/terms-conditions/"),
                                  ),
                                ));
                          },
                          child: Container(
                            height: 70.h,
                            decoration: BoxDecoration(
                              color: Color(0xffeceaf4),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 10.w, top: 10.h, bottom: 10.h),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.transparent,
                                        child: Icon(
                                          Icons.description_outlined,
                                          color: Colors.black,
                                        ), // Placeholder for the logo
                                      ),
                                      SizedBox(width: 10),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            'Terms & Conditions',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18.fSize,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  width: 80.w,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: appTheme.primaryPurple
                                          .withOpacity(0.3),
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      )),
                                  child: Icon(
                                    Icons.keyboard_arrow_right_outlined,
                                    color: appTheme.primaryPurple,
                                    size: 35.fSize,
                                  ), // Right star icon
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(() => SafeArea(
                                  child: Scaffold(
                                    appBar: AppBar(),
                                    backgroundColor: Colors.white,
                                    body: GlobalWebviewScreen(
                                        "https://allstarsnews.ai/privacy-policy/"),
                                  ),
                                ));
                          },
                          child: Container(
                            height: 70.h,
                            decoration: BoxDecoration(
                              color: Color(0xffeceaf4),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 10.w, top: 10.h, bottom: 10.h),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.transparent,
                                        child: Icon(
                                          Icons.verified_user_outlined,
                                          color: Colors.black,
                                        ), // Placeholder for the logo
                                      ),
                                      SizedBox(width: 10),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            'Privacy Policy',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18.fSize,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  width: 80.w,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: appTheme.primaryPurple
                                          .withOpacity(0.3),
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      )),
                                  child: Icon(
                                    Icons.keyboard_arrow_right_outlined,
                                    color: appTheme.primaryPurple,
                                    size: 35.fSize,
                                  ), // Right star icon
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(() => SafeArea(
                                  child: Scaffold(
                                    appBar: AppBar(),
                                    backgroundColor: Colors.white,
                                    body: GlobalWebviewScreen(
                                        "https://allstarsnews.ai/contact-us/"),
                                  ),
                                ));
                          },
                          child: Container(
                            height: 70.h,
                            decoration: BoxDecoration(
                              color: Color(0xffeceaf4),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 10.w, top: 10.h, bottom: 10.h),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.transparent,
                                        child: Icon(
                                          Icons.person_outlined,
                                          color: Colors.black,
                                        ), // Placeholder for the logo
                                      ),
                                      SizedBox(width: 10),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            'Contact Us',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18.fSize,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  width: 80.w,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: appTheme.primaryPurple
                                          .withOpacity(0.3),
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      )),
                                  child: Icon(
                                    Icons.keyboard_arrow_right_outlined,
                                    color: appTheme.primaryPurple,
                                    size: 35.fSize,
                                  ), // Right star icon
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    CustomOutlinedButton(
                      text: "Logout",
                      margin: EdgeInsets.symmetric(horizontal: 13.w),
                      buttonTextStyle: TextStyle(
                        color: appTheme.primaryYellow,
                        fontSize: 18.fSize,
                      ),
                      buttonStyle: CustomButtonStyles.outlineOnError,
                      onPressed: () {
                        // Get.toNamed(AppRoutes.loginScreen);
                        logout();
                      },
                    ),
                    SizedBox(
                      height: 50.h,
                    )
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
