import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/core/utils/size_utils.dart';
import 'package:app_1point2_store/core/utils/types.dart';
import 'package:app_1point2_store/widgets/custom_elevated_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  // var carouselControl = CarouselController();
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
            Positioned(
              right: -80.w,
              top: -80.h,
              child: Container(
                width: 167.w,
                height: 167.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    border: Border.all(
                      color: Colors.black,
                      width: 30.w,
                    )),
              ),
            ),
            Positioned(
              left: -80.w,
              top: Get.width.percent(50),
              child: Container(
                width: 117.w,
                height: 117.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    border: Border.all(
                      color: appTheme.primaryYellow,
                      width: 20.w,
                    )),
              ),
            ),
            Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Reward App',
                            style: theme.textTheme.titleLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.fSize,
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(child: SizedBox()),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.toNamed(AppRoutes.signinOptionsRoute);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "skip",
                            ),
                          ),
                        ),
                      ],
                    ),
                    CarouselSlider.builder(
                      // carouselController: carouselControl,
                      options: CarouselOptions(
                        height: 500.h,
                        initialPage: 0,
                        autoPlay: false,
                        viewportFraction: 1,
                        enableInfiniteScroll: false,
                        scrollDirection: Axis.horizontal,
                        onPageChanged: (
                          index,
                          reason,
                        ) {
                          setState(() {
                            sliderIndex = index;
                          });
                        },
                      ),
                      itemCount: onboardingList.length,
                      itemBuilder: (context, index, realIndex) {
                        return Container(
                          // decoration: AppDecoration.outlinePrimary.copyWith(
                          //     borderRadius: BorderRadiusStyle.roundedBorder10,
                          //     border: Border.all(
                          //       width: 2.w,
                          //       color: Colors.transparent,
                          //     )),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgOnboardings(index + 1),
                                width: Get.width.percent(50),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 70.w,
                                ),
                                child: Text(
                                  onboardingList[index]['title'].toString(),
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24.fSize,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 50.w,
                                ),
                                child: Text(
                                  onboardingList[index]['description']
                                      .toString(),
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.fSize,
                                    fontFamily: "Poppins",
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    Container(
                      height: 9.h,
                      child: AnimatedSmoothIndicator(
                        activeIndex: sliderIndex,
                        count: onboardingList.length,
                        axisDirection: Axis.horizontal,
                        effect: ScrollingDotsEffect(
                          spacing: 6,
                          activeDotColor: Color(0xff5950B7),
                          dotColor: appTheme.blueGray10002,
                          dotHeight: 9.h,
                          dotWidth: 9.w,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    // sliderIndex == 2
                    //     ?
                    Padding(
                      padding: EdgeInsets.all(10.w),
                      child: CustomElevatedButton(
                        onPressed: () {
                          if (sliderIndex == 2) {
                            Get.toNamed(AppRoutes.signinOptionsRoute);
                          } else {
                            // carouselControl.nextPage();
                          }
                        },
                        buttonStyle: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                            appTheme.primaryYellow,
                          ),
                        ),
                        text: "Continue",
                        buttonTextStyle: theme.textTheme.titleLarge!.copyWith(
                          color: Colors.black,
                          fontSize: 18.fSize,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    // : Container(
                    //     height: 85.h,
                    //   ),
                    Expanded(child: SizedBox())
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
