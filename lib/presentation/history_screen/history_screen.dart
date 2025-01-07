import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/core/utils/app_utils.dart';
import 'package:app_1point2_store/core/utils/types.dart';
import 'package:app_1point2_store/presentation/dashboard/dashboard_controller.dart';
import 'package:app_1point2_store/widgets/custom_elevated_button.dart';
import 'package:app_1point2_store/widgets/custom_outlined_button.dart';
import 'package:app_1point2_store/widgets/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

// ignore_for_file: must_be_immutable
class HistoryScreen extends StatefulWidget {
  HistoryScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen>
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
          'Offers',
          style: theme.textTheme.titleLarge!.copyWith(
            fontWeight: FontWeight.normal,
            fontSize: 20.fSize,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: RefreshIndicator(
        onRefresh: () async {},
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: SizeUtils.width.percent(90),
                child: Row(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Today",
                        style: theme.textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 16.fSize,
                            color: Color(0xff161616)),
                      ),
                    ),
                    Spacer(),
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
                  var cardHeight = 100.h;
                  var cardRadius = BorderRadius.circular(10);
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: SizeUtils.width.percent(80),
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
                                          width: SizeUtils.width.percent(45),
                                          child: Text(
                                            "Lloyd 1.5 Ton 3 Star",
                                            style: theme.textTheme.titleMedium!
                                                .copyWith(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                            ),
                                            overflow: TextOverflow.fade,
                                          ),
                                        ),
                                        Container(
                                          width: SizeUtils.width.percent(45),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Points 3200",
                                                    style: theme
                                                        .textTheme.labelSmall!
                                                        .copyWith(),
                                                    overflow: TextOverflow.fade,
                                                  ),
                                                  Text(
                                                    "Sep 18, 2024",
                                                    style: theme
                                                        .textTheme.labelSmall!
                                                        .copyWith(),
                                                    overflow: TextOverflow.fade,
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "16",
                                                    style: theme
                                                        .textTheme.labelSmall!
                                                        .copyWith(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                    overflow: TextOverflow.fade,
                                                  ),
                                                  Text(
                                                    "CLAIMED",
                                                    style: theme
                                                        .textTheme.labelSmall!
                                                        .copyWith(),
                                                    overflow: TextOverflow.fade,
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                // Container(
                                //   margin: EdgeInsets.only(left: 15.w),
                                //   width: SizeUtils.width.percent(70),
                                //   child: DottedLine(
                                //     dashColor: Colors.grey,
                                //     direction: Axis.vertical,
                                //   ),
                                // ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: SizeUtils.width.percent(1),
                        height: cardHeight.percent(95),
                        child: DottedLine(
                          dashColor: appTheme.pageBg,
                          direction: Axis.vertical,
                          lineThickness: SizeUtils.width.percent(1),
                          dashGapColor: Colors.white,
                          dashRadius: 100,
                          dashLength: 10,
                        ),
                      ),
                      Container(
                        width: SizeUtils.width.percent(8),
                        height: cardHeight,
                        margin: EdgeInsets.only(bottom: 10.h),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: cardRadius,
                        ),
                      ),
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
