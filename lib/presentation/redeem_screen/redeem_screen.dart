import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/core/utils/app_utils.dart';
import 'package:app_1point2_store/core/utils/types.dart';
import 'package:app_1point2_store/presentation/dashboard/dashboard_controller.dart';
import 'package:app_1point2_store/widgets/custom_elevated_button.dart';
import 'package:app_1point2_store/widgets/custom_icon_button.dart';
import 'package:app_1point2_store/widgets/custom_outlined_button.dart';
import 'package:app_1point2_store/widgets/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

// ignore_for_file: must_be_immutable
class RedeemScreen extends StatefulWidget {
  RedeemScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<RedeemScreen> createState() => _RedeemScreenState();
}

class _RedeemScreenState extends State<RedeemScreen>
    with TickerProviderStateMixin {
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

  var cardHeight = 500.h;
  var cardRadius = BorderRadius.circular(10);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: appTheme.pageBg,
      appBar: AppBar(
        // leadingWidth: SizeUtils.width.percent(70),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),

        centerTitle: true,
        title: Text(
          'Redeem',
          style: theme.textTheme.titleLarge!.copyWith(
            fontWeight: FontWeight.normal,
            fontSize: 20.fSize,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: RefreshIndicator(
        onRefresh: () async {},
        child: Container(
          width: SizeUtils.width.percent(100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    width: SizeUtils.width.percent(90),
                    padding: EdgeInsets.all(10),
                    // height: cardHeight,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: cardRadius,
                    ),
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: SizeUtils.width.percent(80),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "30",
                                    style: TextStyle(
                                      fontSize: 50.fSize,
                                      fontWeight: FontWeight.w700,
                                      color: appTheme.primaryYellow,
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "%",
                                        style: TextStyle(
                                          fontSize: 20.fSize,
                                          fontWeight: FontWeight.w600,
                                          color: appTheme.primaryYellow,
                                        ),
                                      ),
                                      Text(
                                        "OFF",
                                        style: TextStyle(
                                          fontSize: 14.fSize,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Special",
                                    style: theme.textTheme.labelMedium,
                                  ),
                                  Text(
                                    "VOUCHER",
                                    style: theme.textTheme.titleLarge!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        Container(
                          width: SizeUtils.width.percent(80),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  width: 80.w,
                                  height: 80.w,
                                  alignment: Alignment.center,
                                  child: CustomImageView(
                                    imagePath: ImageConstant.ac,
                                  )),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: SizeUtils.width.percent(55),
                                    child: Text(
                                      "Lloyd 1.5 Ton 3 Star AC",
                                      style:
                                          theme.textTheme.titleLarge!.copyWith(
                                        fontSize: 24.fSize,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      overflow: TextOverflow.fade,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ListView.separated(
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.check,
                                      color: Colors.green,
                                    ),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    Text(
                                      "Simply dummy text of the printing and",
                                      style: theme.textTheme.labelSmall,
                                    )
                                  ],
                                );
                              },
                              itemCount: 5,
                              separatorBuilder: (context, index) => SizedBox(
                                height: 5.h,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15.w),
                          width: SizeUtils.width.percent(75),
                          child: DottedLine(
                            dashColor: appTheme.pageBg,
                          ),
                        ),
                        Container(
                          width: SizeUtils.width.percent(90),
                          height: 150.h,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                width: 100.w,
                                height: 100.w,
                                imagePath:
                                    "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/QR_code_for_mobile_English_Wikipedia.svg/800px-QR_code_for_mobile_English_Wikipedia.svg.png",
                              ),
                              Text(
                                "Valid until 8 Nov 2024",
                                style: TextStyle(
                                  color: Color(0xff575757),
                                  fontSize: 12.fSize,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    left: -10,
                    bottom: 150.h,
                    child: Container(
                      width: 20.w,
                      height: 20.w,
                      decoration: BoxDecoration(
                        color: appTheme.pageBg,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                  Positioned(
                    right: -10,
                    bottom: 150.h,
                    child: Container(
                      width: 20.w,
                      height: 20.w,
                      decoration: BoxDecoration(
                        color: appTheme.pageBg,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                  Positioned(
                      left: 10.h,
                      bottom: 10.h,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: 30.w,
                          height: 30.w,
                          child: CustomImageView(
                            imagePath: ImageConstant.exteranlIcon,
                          ),
                        ),
                      ))
                ],
              ),
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
