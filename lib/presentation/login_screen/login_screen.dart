import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/core/utils/Toast.dart';
import 'package:app_1point2_store/core/utils/app_utils.dart';
import 'package:app_1point2_store/core/utils/size_utils.dart';
import 'package:app_1point2_store/core/utils/types.dart';
import 'package:app_1point2_store/presentation/login_screen/login_controller.dart';
import 'package:app_1point2_store/widgets/custom_elevated_button.dart';
import 'package:app_1point2_store/widgets/custom_icon_button.dart';
import 'package:app_1point2_store/widgets/custom_text_form_field.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var controller = isControllerRegistered<LoginController>(LoginController());
  var sliderIndex = 0;
  var onboardingList = [
    {
      "id": 1,
      "title": "Personalize Your Football News",
      "description":
          "Get tailored news and updates about your favorite teams, players, and leagues."
    },
    {
      "id": 2,
      "title": "Swipe Your Way to Relevance",
      "description":
          "Swipe right on stories you like, left on those you don't. Our AI learns your preferences."
    },
    {
      "id": 3,
      "title": "Stay Ahead of the Game",
      "description":
          "Access exclusive analysis, real-time scores, and engage with a community of football fans."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            // Positioned(
            //   right: -80.w,
            //   top: -80.h,
            //   child: Container(
            //     width: 167.w,
            //     height: 167.w,
            //     decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(100.0),
            //         border: Border.all(
            //           color: Colors.black,
            //           width: 30.w,
            //         )),
            //   ),
            // ),
            // Positioned(
            //   left: -100.w,
            //   top: Get.width.percent(35),
            //   child: Container(
            //     width: 140.w,
            //     height: 140.w,
            //     decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(100.0),
            //         border: Border.all(
            //           color: appTheme.primaryRed,
            //           width: 20.w,
            //         )),
            //   ),
            // ),
            Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 70.h,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.appLogo,
                      width: 137.w,
                      margin: EdgeInsets.only(bottom: 10.h),
                    ),
                    Text(
                      "Log In",
                      style: theme.textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 23.fSize,
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20.h,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 40.w),
                            child: SizedBox(
                              height: 60.h,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Mobile Number',
                                  suffixIcon: Icon(
                                    Icons.person_outline,
                                  ),
                                  // prefixIcon: Obx(
                                  //   () => InkWell(
                                  //     onTap: () {
                                  //       showCountryPicker(
                                  //         context: context,
                                  //         showPhoneCode:
                                  //             true, // optional. Shows phone code before the country name.
                                  //         onSelect: (Country country) {
                                  //           print(
                                  //               'Select country: ${country.phoneCode}');
                                  //           controller.phoneCode.value =
                                  //               "+${country.phoneCode}";
                                  //         },
                                  //         countryListTheme: CountryListThemeData(
                                  //           searchTextStyle: TextStyle(
                                  //             color: Colors.black,
                                  //           ),
                                  //         ),
                                  //       );
                                  //     },
                                  //     child: Container(
                                  //       width: double.minPositive,
                                  //       alignment: Alignment.center,
                                  //       child: Text(
                                  //         "${controller.phoneCode.value}",
                                  //         style: TextStyle(
                                  //           fontWeight: FontWeight.bold,
                                  //         ),
                                  //       ),
                                  //     ),
                                  //   ),
                                  // ),
                                ),
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                                controller: controller.phone,
                                keyboardType: TextInputType.phone,
                              ),
                            ),
                          ),
                          // SizedBox(
                          //   height: 20.h,
                          // ),
                          // Padding(
                          //   padding: EdgeInsets.symmetric(horizontal: 40.w),
                          //   child: SizedBox(
                          //     height: 60.h,
                          //     child: Obx(
                          //       () => TextField(
                          //         obscureText: controller.showPassword.value,
                          //         decoration: InputDecoration(
                          //           border: OutlineInputBorder(),
                          //           labelText: 'Password',
                          //           hintText: "Enter Password",
                          //           suffixIcon: InkWell(
                          //             onTap: () {
                          //               controller.showPassword.value =
                          //                   !controller.showPassword.value;
                          //             },
                          //             child: Icon(
                          //               controller.showPassword.value
                          //                   ? Icons.visibility_outlined
                          //                   : Icons.visibility_off_outlined,
                          //             ),
                          //           ),
                          //         ),
                          //         keyboardType: TextInputType.visiblePassword,
                          //         style: TextStyle(
                          //           color: Colors.black,
                          //         ),
                          //         controller: controller.password,
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          // SizedBox(
                          //   height: 15.h,
                          // ),
                          // Padding(
                          //   padding: EdgeInsets.symmetric(horizontal: 40.w),
                          //   child: Row(
                          //     mainAxisAlignment: MainAxisAlignment.end,
                          //     children: [
                          //       InkWell(
                          //         onTap: controller.forgotPassword,
                          //         child: Text(
                          //           "Forgot Password?",
                          //           style: theme.textTheme.labelLarge!.copyWith(
                          //             fontSize: 14.fSize,
                          //           ),
                          //         ),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                          SizedBox(
                            height: 30.h,
                          ),
                          CustomElevatedButton(
                            margin: EdgeInsets.symmetric(horizontal: 40.w),
                            onPressed: controller.onSubmit,
                            buttonStyle: ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                appTheme.primaryYellow,
                              ),
                              shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(100))),
                            ),
                            text: "Log In",
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
                              fontSize: 18.fSize,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                          Row(children: <Widget>[
                            // Expanded(
                            //   child: Divider(
                            //     indent: 20.w,
                            //     thickness: 2.0,
                            //   ),
                            // ),
                            // Text(
                            //   "or Login with",
                            //   style: TextStyle(
                            //     color: Color(0xff999999),
                            //     fontSize: 15.fSize,
                            //     fontWeight: FontWeight.w600,
                            //   ),
                            // ),
                            // Expanded(
                            //   child: Divider(
                            //     endIndent: 20.w,
                            //     thickness: 2.0,
                            //   ),
                            // ),
                          ]),
                          // SizedBox(
                          //   height: 20.h,
                          // ),
                          // SizedBox(
                          //   width: Get.width.percent(50),
                          //   child: Row(
                          //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                          //     children: [
                          //       CustomIconButton(
                          //         width: 40.w,
                          //         height: 40.w,
                          //         padding: EdgeInsets.all(5.w),
                          //         decoration: BoxDecoration(
                          //             border: Border.all(
                          //               color: Colors.black,
                          //             ),
                          //             borderRadius: BorderRadius.circular(100)),
                          //         child: CustomImageView(
                          //           imagePath: ImageConstant.imgIconFb,
                          //           fit: BoxFit.contain,
                          //           color: Colors.black,
                          //           width: 12.w,
                          //           height: 12.w,
                          //         ),
                          //       ),
                          //       CustomIconButton(
                          //         width: 40.w,
                          //         height: 40.w,
                          //         padding: EdgeInsets.all(5.w),
                          //         decoration: BoxDecoration(
                          //             border: Border.all(
                          //               color: Colors.black,
                          //             ),
                          //             borderRadius: BorderRadius.circular(100)),
                          //         child: CustomImageView(
                          //           imagePath: ImageConstant.imgIconGoogle,
                          //           fit: BoxFit.contain,
                          //           color: Colors.black,
                          //           width: 12.w,
                          //           height: 12.w,
                          //         ),
                          //       ),
                          //       CustomIconButton(
                          //         width: 40.w,
                          //         height: 40.w,
                          //         padding: EdgeInsets.all(5.w),
                          //         decoration: BoxDecoration(
                          //             border: Border.all(
                          //               color: Colors.black,
                          //             ),
                          //             borderRadius: BorderRadius.circular(100)),
                          //         child: CustomImageView(
                          //           imagePath: ImageConstant.imgIconApple,
                          //           fit: BoxFit.contain,
                          //           color: Colors.black,
                          //           width: 12.w,
                          //           height: 12.w,
                          //         ),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                          // SizedBox(
                          //   height: 10.h,
                          // ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Dont have an account? "),
                              InkWell(
                                onTap: () {
                                  Get.toNamed(AppRoutes.signUpScreen);
                                },
                                child: Text(
                                  "Sign Up",
                                  style: theme.textTheme.labelLarge!.copyWith(
                                    fontSize: 14.fSize,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),

                    // DefaultTabController(
                    //   length: 2,
                    //   child: Column(
                    //     mainAxisSize: MainAxisSize.max,
                    //     children: <Widget>[
                    //       Container(
                    //         child: TabBar(
                    //           indicatorSize: TabBarIndicatorSize.tab,
                    //           dividerColor: Colors.transparent,
                    //           indicatorColor: Colors.grey,
                    //           tabs: [
                    //             Tab(text: "User"),
                    //             Tab(text: "Distributor"),
                    //           ],
                    //         ),
                    //       ),
                    //       Container(
                    //         height: SizeUtils.height.percent(50),
                    //         child: TabBarView(children: [
                    //           Container(
                    //             child: Column(
                    //               children: [
                    //                 SizedBox(
                    //                   height: 20.h,
                    //                 ),
                    //                 Padding(
                    //                   padding: EdgeInsets.symmetric(
                    //                       horizontal: 40.w),
                    //                   child: SizedBox(
                    //                     height: 60.h,
                    //                     child: TextField(
                    //                       decoration: InputDecoration(
                    //                         border: OutlineInputBorder(),
                    //                         labelText: 'Mobile Number',
                    //                         suffixIcon: Icon(
                    //                           Icons.person_outline,
                    //                         ),
                    //                         // prefixIcon: Obx(
                    //                         //   () => InkWell(
                    //                         //     onTap: () {
                    //                         //       showCountryPicker(
                    //                         //         context: context,
                    //                         //         showPhoneCode:
                    //                         //             true, // optional. Shows phone code before the country name.
                    //                         //         onSelect: (Country country) {
                    //                         //           print(
                    //                         //               'Select country: ${country.phoneCode}');
                    //                         //           controller.phoneCode.value =
                    //                         //               "+${country.phoneCode}";
                    //                         //         },
                    //                         //         countryListTheme: CountryListThemeData(
                    //                         //           searchTextStyle: TextStyle(
                    //                         //             color: Colors.black,
                    //                         //           ),
                    //                         //         ),
                    //                         //       );
                    //                         //     },
                    //                         //     child: Container(
                    //                         //       width: double.minPositive,
                    //                         //       alignment: Alignment.center,
                    //                         //       child: Text(
                    //                         //         "${controller.phoneCode.value}",
                    //                         //         style: TextStyle(
                    //                         //           fontWeight: FontWeight.bold,
                    //                         //         ),
                    //                         //       ),
                    //                         //     ),
                    //                         //   ),
                    //                         // ),
                    //                       ),
                    //                       style: TextStyle(
                    //                         color: Colors.black,
                    //                       ),
                    //                       controller: controller.phone,
                    //                       keyboardType: TextInputType.phone,
                    //                     ),
                    //                   ),
                    //                 ),
                    //                 // SizedBox(
                    //                 //   height: 20.h,
                    //                 // ),
                    //                 // Padding(
                    //                 //   padding: EdgeInsets.symmetric(horizontal: 40.w),
                    //                 //   child: SizedBox(
                    //                 //     height: 60.h,
                    //                 //     child: Obx(
                    //                 //       () => TextField(
                    //                 //         obscureText: controller.showPassword.value,
                    //                 //         decoration: InputDecoration(
                    //                 //           border: OutlineInputBorder(),
                    //                 //           labelText: 'Password',
                    //                 //           hintText: "Enter Password",
                    //                 //           suffixIcon: InkWell(
                    //                 //             onTap: () {
                    //                 //               controller.showPassword.value =
                    //                 //                   !controller.showPassword.value;
                    //                 //             },
                    //                 //             child: Icon(
                    //                 //               controller.showPassword.value
                    //                 //                   ? Icons.visibility_outlined
                    //                 //                   : Icons.visibility_off_outlined,
                    //                 //             ),
                    //                 //           ),
                    //                 //         ),
                    //                 //         keyboardType: TextInputType.visiblePassword,
                    //                 //         style: TextStyle(
                    //                 //           color: Colors.black,
                    //                 //         ),
                    //                 //         controller: controller.password,
                    //                 //       ),
                    //                 //     ),
                    //                 //   ),
                    //                 // ),
                    //                 // SizedBox(
                    //                 //   height: 15.h,
                    //                 // ),
                    //                 // Padding(
                    //                 //   padding: EdgeInsets.symmetric(horizontal: 40.w),
                    //                 //   child: Row(
                    //                 //     mainAxisAlignment: MainAxisAlignment.end,
                    //                 //     children: [
                    //                 //       InkWell(
                    //                 //         onTap: controller.forgotPassword,
                    //                 //         child: Text(
                    //                 //           "Forgot Password?",
                    //                 //           style: theme.textTheme.labelLarge!.copyWith(
                    //                 //             fontSize: 14.fSize,
                    //                 //           ),
                    //                 //         ),
                    //                 //       ),
                    //                 //     ],
                    //                 //   ),
                    //                 // ),
                    //                 SizedBox(
                    //                   height: 30.h,
                    //                 ),
                    //                 CustomElevatedButton(
                    //                   margin: EdgeInsets.symmetric(
                    //                       horizontal: 40.w),
                    //                   onPressed: controller.onSubmit,
                    //                   buttonStyle: ButtonStyle(
                    //                     backgroundColor: WidgetStatePropertyAll(
                    //                       appTheme.primaryRed,
                    //                     ),
                    //                     shape: WidgetStatePropertyAll(
                    //                         RoundedRectangleBorder(
                    //                             borderRadius:
                    //                                 BorderRadius.circular(
                    //                                     100))),
                    //                   ),
                    //                   text: "Log In",
                    //                   decoration: BoxDecoration(
                    //                     borderRadius:
                    //                         BorderRadius.circular(100),
                    //                     boxShadow: [
                    //                       BoxShadow(
                    //                         color: Colors.grey.shade500,
                    //                         blurRadius:
                    //                             5.0, // soften the shadow
                    //                         spreadRadius:
                    //                             0.9, //extend the shadow
                    //                         offset: Offset(
                    //                           0.0, // Move to right 10  horizontally
                    //                           3.0, // Move to bottom 10 Vertically
                    //                         ),
                    //                       )
                    //                     ],
                    //                   ),
                    //                   buttonTextStyle:
                    //                       theme.textTheme.titleLarge!.copyWith(
                    //                     color: Colors.black,
                    //                     fontSize: 18.fSize,
                    //                     fontWeight: FontWeight.w500,
                    //                   ),
                    //                 ),
                    //                 SizedBox(
                    //                   height: 30.h,
                    //                 ),
                    //                 Row(children: <Widget>[
                    //                   // Expanded(
                    //                   //   child: Divider(
                    //                   //     indent: 20.w,
                    //                   //     thickness: 2.0,
                    //                   //   ),
                    //                   // ),
                    //                   // Text(
                    //                   //   "or Login with",
                    //                   //   style: TextStyle(
                    //                   //     color: Color(0xff999999),
                    //                   //     fontSize: 15.fSize,
                    //                   //     fontWeight: FontWeight.w600,
                    //                   //   ),
                    //                   // ),
                    //                   // Expanded(
                    //                   //   child: Divider(
                    //                   //     endIndent: 20.w,
                    //                   //     thickness: 2.0,
                    //                   //   ),
                    //                   // ),
                    //                 ]),
                    //                 // SizedBox(
                    //                 //   height: 20.h,
                    //                 // ),
                    //                 // SizedBox(
                    //                 //   width: Get.width.percent(50),
                    //                 //   child: Row(
                    //                 //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //                 //     children: [
                    //                 //       CustomIconButton(
                    //                 //         width: 40.w,
                    //                 //         height: 40.w,
                    //                 //         padding: EdgeInsets.all(5.w),
                    //                 //         decoration: BoxDecoration(
                    //                 //             border: Border.all(
                    //                 //               color: Colors.black,
                    //                 //             ),
                    //                 //             borderRadius: BorderRadius.circular(100)),
                    //                 //         child: CustomImageView(
                    //                 //           imagePath: ImageConstant.imgIconFb,
                    //                 //           fit: BoxFit.contain,
                    //                 //           color: Colors.black,
                    //                 //           width: 12.w,
                    //                 //           height: 12.w,
                    //                 //         ),
                    //                 //       ),
                    //                 //       CustomIconButton(
                    //                 //         width: 40.w,
                    //                 //         height: 40.w,
                    //                 //         padding: EdgeInsets.all(5.w),
                    //                 //         decoration: BoxDecoration(
                    //                 //             border: Border.all(
                    //                 //               color: Colors.black,
                    //                 //             ),
                    //                 //             borderRadius: BorderRadius.circular(100)),
                    //                 //         child: CustomImageView(
                    //                 //           imagePath: ImageConstant.imgIconGoogle,
                    //                 //           fit: BoxFit.contain,
                    //                 //           color: Colors.black,
                    //                 //           width: 12.w,
                    //                 //           height: 12.w,
                    //                 //         ),
                    //                 //       ),
                    //                 //       CustomIconButton(
                    //                 //         width: 40.w,
                    //                 //         height: 40.w,
                    //                 //         padding: EdgeInsets.all(5.w),
                    //                 //         decoration: BoxDecoration(
                    //                 //             border: Border.all(
                    //                 //               color: Colors.black,
                    //                 //             ),
                    //                 //             borderRadius: BorderRadius.circular(100)),
                    //                 //         child: CustomImageView(
                    //                 //           imagePath: ImageConstant.imgIconApple,
                    //                 //           fit: BoxFit.contain,
                    //                 //           color: Colors.black,
                    //                 //           width: 12.w,
                    //                 //           height: 12.w,
                    //                 //         ),
                    //                 //       ),
                    //                 //     ],
                    //                 //   ),
                    //                 // ),
                    //                 SizedBox(
                    //                   height: 20.h,
                    //                 ),
                    //                 // Row(
                    //                 //   mainAxisAlignment:
                    //                 //       MainAxisAlignment.center,
                    //                 //   children: [
                    //                 //     Text("Dont have an account? "),
                    //                 //     InkWell(
                    //                 //       onTap: () {
                    //                 //         Get.toNamed(AppRoutes.signUpScreen);
                    //                 //       },
                    //                 //       child: Text(
                    //                 //         "Sign Up",
                    //                 //         style: theme.textTheme.labelLarge!
                    //                 //             .copyWith(
                    //                 //           fontSize: 14.fSize,
                    //                 //         ),
                    //                 //       ),
                    //                 //     ),
                    //                 //   ],
                    //                 // )
                    //               ],
                    //             ),
                    //           ),
                    //           Container(
                    //             child: Column(
                    //               children: [
                    //                 SizedBox(
                    //                   height: 20.h,
                    //                 ),
                    //                 Padding(
                    //                   padding: EdgeInsets.symmetric(
                    //                       horizontal: 40.w),
                    //                   child: SizedBox(
                    //                     height: 60.h,
                    //                     child: TextField(
                    //                       decoration: InputDecoration(
                    //                         border: OutlineInputBorder(),
                    //                         labelText: 'Mobile Number',
                    //                         suffixIcon: Icon(
                    //                           Icons.person_outline,
                    //                         ),
                    //                         // prefixIcon: Obx(
                    //                         //   () => InkWell(
                    //                         //     onTap: () {
                    //                         //       showCountryPicker(
                    //                         //         context: context,
                    //                         //         showPhoneCode:
                    //                         //             true, // optional. Shows phone code before the country name.
                    //                         //         onSelect: (Country country) {
                    //                         //           print(
                    //                         //               'Select country: ${country.phoneCode}');
                    //                         //           controller.phoneCode.value =
                    //                         //               "+${country.phoneCode}";
                    //                         //         },
                    //                         //         countryListTheme: CountryListThemeData(
                    //                         //           searchTextStyle: TextStyle(
                    //                         //             color: Colors.black,
                    //                         //           ),
                    //                         //         ),
                    //                         //       );
                    //                         //     },
                    //                         //     child: Container(
                    //                         //       width: double.minPositive,
                    //                         //       alignment: Alignment.center,
                    //                         //       child: Text(
                    //                         //         "${controller.phoneCode.value}",
                    //                         //         style: TextStyle(
                    //                         //           fontWeight: FontWeight.bold,
                    //                         //         ),
                    //                         //       ),
                    //                         //     ),
                    //                         //   ),
                    //                         // ),
                    //                       ),
                    //                       style: TextStyle(
                    //                         color: Colors.black,
                    //                       ),
                    //                       controller: controller.phone,
                    //                       keyboardType: TextInputType.phone,
                    //                     ),
                    //                   ),
                    //                 ),
                    //                 SizedBox(
                    //                   height: 20.h,
                    //                 ),
                    //                 Padding(
                    //                   padding: EdgeInsets.symmetric(
                    //                       horizontal: 40.w),
                    //                   child: SizedBox(
                    //                     height: 60.h,
                    //                     child: Obx(
                    //                       () => TextField(
                    //                         obscureText:
                    //                             controller.showPassword.value,
                    //                         decoration: InputDecoration(
                    //                           border: OutlineInputBorder(),
                    //                           labelText: 'Password',
                    //                           hintText: "Enter Password",
                    //                           suffixIcon: InkWell(
                    //                             onTap: () {
                    //                               controller
                    //                                       .showPassword.value =
                    //                                   !controller
                    //                                       .showPassword.value;
                    //                             },
                    //                             child: Icon(
                    //                               controller.showPassword.value
                    //                                   ? Icons
                    //                                       .visibility_outlined
                    //                                   : Icons
                    //                                       .visibility_off_outlined,
                    //                             ),
                    //                           ),
                    //                         ),
                    //                         keyboardType:
                    //                             TextInputType.visiblePassword,
                    //                         style: TextStyle(
                    //                           color: Colors.black,
                    //                         ),
                    //                         controller: controller.password,
                    //                       ),
                    //                     ),
                    //                   ),
                    //                 ),
                    //                 SizedBox(
                    //                   height: 15.h,
                    //                 ),
                    //                 Padding(
                    //                   padding: EdgeInsets.symmetric(
                    //                       horizontal: 40.w),
                    //                   child: Row(
                    //                     mainAxisAlignment:
                    //                         MainAxisAlignment.end,
                    //                     children: [
                    //                       InkWell(
                    //                         onTap: controller.forgotPassword,
                    //                         child: Text(
                    //                           "Forgot Password?",
                    //                           style: theme.textTheme.labelLarge!
                    //                               .copyWith(
                    //                             fontSize: 14.fSize,
                    //                           ),
                    //                         ),
                    //                       ),
                    //                     ],
                    //                   ),
                    //                 ),
                    //                 SizedBox(
                    //                   height: 30.h,
                    //                 ),
                    //                 CustomElevatedButton(
                    //                   margin: EdgeInsets.symmetric(
                    //                       horizontal: 40.w),
                    //                   onPressed: controller.onSubmit,
                    //                   buttonStyle: ButtonStyle(
                    //                     backgroundColor: WidgetStatePropertyAll(
                    //                       appTheme.primaryRed,
                    //                     ),
                    //                     shape: WidgetStatePropertyAll(
                    //                         RoundedRectangleBorder(
                    //                             borderRadius:
                    //                                 BorderRadius.circular(
                    //                                     100))),
                    //                   ),
                    //                   text: "Log In",
                    //                   decoration: BoxDecoration(
                    //                     borderRadius:
                    //                         BorderRadius.circular(100),
                    //                     boxShadow: [
                    //                       BoxShadow(
                    //                         color: Colors.grey.shade500,
                    //                         blurRadius:
                    //                             5.0, // soften the shadow
                    //                         spreadRadius:
                    //                             0.9, //extend the shadow
                    //                         offset: Offset(
                    //                           0.0, // Move to right 10  horizontally
                    //                           3.0, // Move to bottom 10 Vertically
                    //                         ),
                    //                       )
                    //                     ],
                    //                   ),
                    //                   buttonTextStyle:
                    //                       theme.textTheme.titleLarge!.copyWith(
                    //                     color: Colors.black,
                    //                     fontSize: 18.fSize,
                    //                     fontWeight: FontWeight.w500,
                    //                   ),
                    //                 ),
                    //                 SizedBox(
                    //                   height: 30.h,
                    //                 ),
                    //                 Row(children: <Widget>[
                    //                   Expanded(
                    //                       child: Divider(
                    //                     indent: 20.w,
                    //                     thickness: 2.0,
                    //                   )),
                    //                   // Text(
                    //                   //   "or Login with",
                    //                   //   style: TextStyle(
                    //                   //     color: Color(0xff999999),
                    //                   //     fontSize: 15.fSize,
                    //                   //     fontWeight: FontWeight.w600,
                    //                   //   ),
                    //                   // ),
                    //                   Expanded(
                    //                       child: Divider(
                    //                     endIndent: 20.w,
                    //                     thickness: 2.0,
                    //                   )),
                    //                 ]),
                    //                 // SizedBox(
                    //                 //   height: 20.h,
                    //                 // ),
                    //                 // SizedBox(
                    //                 //   width: Get.width.percent(50),
                    //                 //   child: Row(
                    //                 //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //                 //     children: [
                    //                 //       CustomIconButton(
                    //                 //         width: 40.w,
                    //                 //         height: 40.w,
                    //                 //         padding: EdgeInsets.all(5.w),
                    //                 //         decoration: BoxDecoration(
                    //                 //             border: Border.all(
                    //                 //               color: Colors.black,
                    //                 //             ),
                    //                 //             borderRadius: BorderRadius.circular(100)),
                    //                 //         child: CustomImageView(
                    //                 //           imagePath: ImageConstant.imgIconFb,
                    //                 //           fit: BoxFit.contain,
                    //                 //           color: Colors.black,
                    //                 //           width: 12.w,
                    //                 //           height: 12.w,
                    //                 //         ),
                    //                 //       ),
                    //                 //       CustomIconButton(
                    //                 //         width: 40.w,
                    //                 //         height: 40.w,
                    //                 //         padding: EdgeInsets.all(5.w),
                    //                 //         decoration: BoxDecoration(
                    //                 //             border: Border.all(
                    //                 //               color: Colors.black,
                    //                 //             ),
                    //                 //             borderRadius: BorderRadius.circular(100)),
                    //                 //         child: CustomImageView(
                    //                 //           imagePath: ImageConstant.imgIconGoogle,
                    //                 //           fit: BoxFit.contain,
                    //                 //           color: Colors.black,
                    //                 //           width: 12.w,
                    //                 //           height: 12.w,
                    //                 //         ),
                    //                 //       ),
                    //                 //       CustomIconButton(
                    //                 //         width: 40.w,
                    //                 //         height: 40.w,
                    //                 //         padding: EdgeInsets.all(5.w),
                    //                 //         decoration: BoxDecoration(
                    //                 //             border: Border.all(
                    //                 //               color: Colors.black,
                    //                 //             ),
                    //                 //             borderRadius: BorderRadius.circular(100)),
                    //                 //         child: CustomImageView(
                    //                 //           imagePath: ImageConstant.imgIconApple,
                    //                 //           fit: BoxFit.contain,
                    //                 //           color: Colors.black,
                    //                 //           width: 12.w,
                    //                 //           height: 12.w,
                    //                 //         ),
                    //                 //       ),
                    //                 //     ],
                    //                 //   ),
                    //                 // ),
                    //                 SizedBox(
                    //                   height: 20.h,
                    //                 ),
                    //                 // Row(
                    //                 //   mainAxisAlignment:
                    //                 //       MainAxisAlignment.center,
                    //                 //   children: [
                    //                 //     Text("Dont have an account? "),
                    //                 //     InkWell(
                    //                 //       onTap: () {
                    //                 //         Get.toNamed(AppRoutes.signUpScreen);
                    //                 //       },
                    //                 //       child: Text(
                    //                 //         "Sign Up",
                    //                 //         style: theme.textTheme.labelLarge!
                    //                 //             .copyWith(
                    //                 //           fontSize: 14.fSize,
                    //                 //         ),
                    //                 //       ),
                    //                 //     ),
                    //                 //   ],
                    //                 // )
                    //               ],
                    //             ),
                    //           ),
                    //         ]),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
