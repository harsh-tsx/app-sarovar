import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/core/controllers/auth.controller.dart';
import 'package:app_1point2_store/core/utils/app_utils.dart';
import 'package:app_1point2_store/core/utils/types.dart';
import 'package:app_1point2_store/presentation/dashboard/dashboard_controller.dart';
import 'package:app_1point2_store/widgets/custom_elevated_button.dart';
import 'package:app_1point2_store/widgets/custom_outlined_button.dart';
import 'package:app_1point2_store/widgets/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import 'controller/home_controller.dart';

// ignore_for_file: must_be_immutable
class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  HomeController controller = Get.put(HomeController());

  var dashboardController =
      isControllerRegistered<DashboardController>(DashboardController());

  late AnimationController progressBarController;

  // GlobalKey keyButton = GlobalKey();

  @override
  void initState() {
    progressBarController = AnimationController(
      /// [AnimationController]s can be created with `vsync: this` because of
      /// [TickerProviderStateMixin].
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
      });
    progressBarController.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    progressBarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: appTheme.pageBg,
      body: RefreshIndicator(
        onRefresh: () async {},
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        width: SizeUtils.width,
                        height: SizeUtils.height.percent(30),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xffeb0001), Color(0xffdd0058)],
                            stops: [0, 1],
                            begin: Alignment.centerRight,
                            end: Alignment.centerLeft,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.w, vertical: 20.h),
                              child: Text(
                                "Hi, User",
                                style: theme.textTheme.titleLarge!.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: SizeUtils.width,
                        height: SizeUtils.height.percent(10),
                        decoration: BoxDecoration(
                          color: Color(0xffF1F1F1),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: SizeUtils.width.percent(20),
                    child: Container(
                      width: SizeUtils.width.percent(100),
                      height: SizeUtils.height.percent(25),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      alignment: Alignment.center,
                      child: Container(
                        width: SizeUtils.width.percent(90),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.w,
                          vertical: 20.h,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 50.w,
                                      width: 50.w,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Color(0xffF9F2F9),
                                      ),
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.only(right: 5.w),
                                      child: CustomImageView(
                                        imagePath: ImageConstant.starIcon,
                                        width: 30.w,
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Total Points Earned",
                                          style: theme.textTheme.bodySmall,
                                        ),
                                        Text(
                                          "0 pts",
                                          style: theme.textTheme.titleLarge,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "",
                                          style: theme.textTheme.bodySmall,
                                        ),
                                        Text(
                                          "0 pts",
                                          style: theme.textTheme.titleLarge!
                                              .copyWith(
                                            color: Color(0xff6B6B6B),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Referal code",
                                      style:
                                          theme.textTheme.bodySmall!.copyWith(
                                        color: Color(0xff6B6B6B),
                                      ),
                                    ),
                                    Text(
                                      "www.baam.com/",
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    CustomOutlinedButton(
                                      text: "Share",
                                      width: 100.w,
                                      height: 40.h,
                                      buttonStyle: OutlinedButton.styleFrom(
                                        backgroundColor: Colors.transparent,
                                        side: BorderSide(
                                          color: Color(0xff31493B),
                                          width: 1,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                      ),
                                      decoration: BoxDecoration(),
                                      buttonTextStyle: TextStyle(
                                        color: Color(0xff31493B),
                                      ),
                                      leftIcon: Container(
                                        margin: EdgeInsets.only(right: 5.w),
                                        child: Icon(
                                          Icons.ios_share_outlined,
                                          color: Color(0xff31493B),
                                          size: 15,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                width: SizeUtils.width.percent(90),
                height: 50.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomElevatedButton(
                      width: SizeUtils.width.percent(90).percent(30),
                      height: 40.h,
                      text: "Active",
                      buttonTextStyle: theme.textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.normal,
                      ),
                      buttonStyle: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      leftIcon: Container(
                        margin: EdgeInsets.only(right: 5.w),
                        child: CustomImageView(
                          imagePath: ImageConstant.homeTabActiveIcon,
                          width: 20.w,
                          height: 20.w,
                        ),
                      ),
                      rightIcon: Icon(
                        Icons.chevron_right,
                        color: Colors.grey,
                      ),
                    ),
                    VerticalDivider(
                      thickness: 1,
                      indent: 5,
                      endIndent: 5,
                    ),
                    CustomElevatedButton(
                      width: SizeUtils.width.percent(90).percent(30),
                      height: 40.h,
                      text: "Claimed",
                      buttonTextStyle: theme.textTheme.titleSmall!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                      buttonStyle: ElevatedButton.styleFrom(
                        backgroundColor: theme.colorScheme.primary,
                      ),
                      leftIcon: Container(
                        margin: EdgeInsets.only(right: 5.w),
                        child: CustomImageView(
                          imagePath: ImageConstant.homeTabActiveIcon,
                          width: 20.w,
                          height: 20.w,
                        ),
                      ),
                      rightIcon: Icon(
                        Icons.chevron_right,
                        color: Colors.white,
                      ),
                    ),
                    VerticalDivider(
                      thickness: 1,
                      indent: 5,
                      endIndent: 5,
                    ),
                    CustomElevatedButton(
                      width: SizeUtils.width.percent(90).percent(30),
                      height: 40.h,
                      text: "Expired",
                      buttonTextStyle: theme.textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.normal,
                      ),
                      buttonStyle: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      leftIcon: Container(
                        margin: EdgeInsets.only(right: 5.w),
                        child: CustomImageView(
                          imagePath: ImageConstant.homeTabActiveIcon,
                          width: 20.w,
                          height: 20.w,
                        ),
                      ),
                      rightIcon: Icon(
                        Icons.chevron_right,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                width: SizeUtils.width.percent(90),
                child: Row(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Rewards",
                        style: theme.textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 16.fSize,
                            color: Color(0xff161616)),
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "View All",
                        style: theme.textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.fSize,
                          color: Color(0xFF575757),
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0xFF575757),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                ),
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  var cardHeight = 150.h;
                  var cardRadius = BorderRadius.circular(10);
                  return Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: SizeUtils.width.percent(90),
                        height: cardHeight,
                        margin: EdgeInsets.only(bottom: 10.h),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: cardRadius,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              height: cardHeight,
                              decoration: BoxDecoration(
                                color: Color(0xffDD0058),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                ),
                              ),
                              alignment: Alignment.center,
                              child: RotatedBox(
                                quarterTurns: -1,
                                child: Text(
                                  "DISCOUNT",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.fSize,
                                  ),
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 80.w,
                                      height: 80.w,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            ImageConstant.qrBg,
                                          ),
                                        ),
                                      ),
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 40.w,
                                            height: 40.w,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                border: const GradientBoxBorder(
                                                  gradient:
                                                      LinearGradient(colors: [
                                                    Color(0xffFF9730),
                                                    Color(0xffEF260C),
                                                  ]),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                    ImageConstant.ac,
                                                  ),
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: SizeUtils.width.percent(55),
                                          child: Text(
                                            "Lloyd 1.5 Ton 3 Star AC",
                                            style: theme.textTheme.titleLarge,
                                            overflow: TextOverflow.fade,
                                          ),
                                        ),
                                        Container(
                                          width: SizeUtils.width.percent(55),
                                          child: Text(
                                            "Gift value packed 50% OFF for every scan. Gift Card cost 200 POINTS",
                                            style: theme.textTheme.labelSmall,
                                            overflow: TextOverflow.fade,
                                            maxLines: 2,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 15.w),
                                  width: SizeUtils.width.percent(70),
                                  child: DottedLine(
                                    dashColor: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 15.w),
                                  width: SizeUtils.width.percent(70),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Expires"),
                                          Text(
                                            "08 Nov 2024",
                                            style: theme.textTheme.titleMedium!
                                                .copyWith(
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      index == 1
                                          ? CustomElevatedButton(
                                              width: 80.w,
                                              height: 30.h,
                                              text: "Used",
                                              buttonTextStyle: theme
                                                  .textTheme.titleSmall!
                                                  .copyWith(
                                                color: Colors.white,
                                                fontWeight: FontWeight.normal,
                                              ),
                                              buttonStyle:
                                                  ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Color(0xffD5D5D5),
                                              ),
                                              onPressed: () {
                                                Get.toNamed(AppRoutes
                                                    .usedVoucherScreen);
                                              },
                                            )
                                          : CustomElevatedButton(
                                              width: 80.w,
                                              height: 30.h,
                                              text: "Redeem",
                                              buttonTextStyle: theme
                                                  .textTheme.titleSmall!
                                                  .copyWith(
                                                color: Colors.white,
                                                fontWeight: FontWeight.normal,
                                              ),
                                              buttonStyle:
                                                  ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    theme.colorScheme.primary,
                                              ),
                                              onPressed: () {
                                                Get.toNamed(
                                                    AppRoutes.redeemScreen);
                                              },
                                            ),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        left: -10,
                        child: Container(
                          width: 20.w,
                          height: 20.w,
                          decoration: BoxDecoration(
                            color: Color(0xffF1F1F1),
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                      Positioned(
                        right: -10,
                        child: Container(
                          width: 20.w,
                          height: 20.w,
                          decoration: BoxDecoration(
                            color: Color(0xffF1F1F1),
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      )
                    ],
                  );
                },
                itemCount: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MySeparator extends StatelessWidget {
  const MySeparator({Key? key, this.height = 1, this.color = Colors.black})
      : super(key: key);
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        const dashWidth = 10.0;
        final dashHeight = height;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
        );
      },
    );
  }
}
