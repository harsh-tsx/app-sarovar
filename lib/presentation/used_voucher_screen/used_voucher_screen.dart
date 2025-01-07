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
class UsedVoucherScreen extends StatefulWidget {
  UsedVoucherScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<UsedVoucherScreen> createState() => _UsedVoucherScreenState();
}

class _UsedVoucherScreenState extends State<UsedVoucherScreen>
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
          'Used Voucher',
          style: theme.textTheme.titleLarge!.copyWith(
            fontWeight: FontWeight.normal,
            fontSize: 20.fSize,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: RefreshIndicator(
        onRefresh: () async {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: SizeUtils.width.percent(80),
                  height: 150.h,
                  margin: EdgeInsets.only(bottom: 10.h),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: cardRadius,
                    gradient: LinearGradient(
                      colors: [Color(0xffeb0001), Color(0xffdd0058)],
                      stops: [0, 1],
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
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
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 40.w,
                                      height: 40.w,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: const GradientBoxBorder(
                                            gradient: LinearGradient(colors: [
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
                              SizedBox(
                                width: 10.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: SizeUtils.width.percent(45),
                                    child: Text(
                                      "Lloyd 1.5 Ton 3 Star",
                                      style:
                                          theme.textTheme.titleMedium!.copyWith(
                                        color: Colors.white,
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
                                              "Points 2800   |",
                                              style: theme.textTheme.labelSmall!
                                                  .copyWith(
                                                color: Colors.white,
                                              ),
                                              overflow: TextOverflow.fade,
                                            ),
                                            Text(
                                              "CLAIMED",
                                              style: theme.textTheme.labelSmall!
                                                  .copyWith(
                                                color: Colors.white,
                                              ),
                                              overflow: TextOverflow.fade,
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Oct 26, 2024",
                                              style: theme.textTheme.labelSmall!
                                                  .copyWith(
                                                // fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                              overflow: TextOverflow.fade,
                                            ),
                                            Text(
                                              "",
                                              style: theme.textTheme.labelSmall!
                                                  .copyWith(
                                                color: Colors.white,
                                              ),
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
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: SizeUtils.width.percent(1),
                  height: (150.h).percent(95),
                  child: DottedLine(
                    dashColor: appTheme.pageBg,
                    direction: Axis.vertical,
                    lineThickness: SizeUtils.width.percent(1),
                    dashGapColor: appTheme.primaryYellow,
                    dashRadius: 100,
                    dashLength: 10,
                  ),
                ),
                Container(
                  width: SizeUtils.width.percent(8),
                  height: 150.h,
                  margin: EdgeInsets.only(bottom: 10.h),
                  decoration: BoxDecoration(
                    color: Color(0xffeb0001),
                    borderRadius: cardRadius,
                  ),
                ),
              ],
            ),
            Container(
              width: SizeUtils.width.percent(90),
              margin: EdgeInsets.only(bottom: 5.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "10% discount voucher",
                    style: TextStyle(
                      fontSize: 20.fSize,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "1.000 Points",
                    style: TextStyle(
                      fontSize: 15.fSize,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffFCB351),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
                height: SizeUtils.height.percent(60),
                child: _tabSection(context)),
          ],
        ),
      ),
    );
  }

  Widget _tabSection(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            child: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              dividerColor: Colors.transparent,
              indicatorColor: Colors.grey,
              tabs: [
                Tab(text: "Detail"),
                Tab(text: "Terms & Conditions"),
              ],
            ),
          ),
          Container(
            //Add this to give height
            height: SizeUtils.height.percent(50),
            child: TabBarView(children: [
              Container(
                padding: EdgeInsets.all(20.w),
                child: Text(
                    """Sure thing! Your "25% discount voucher" is a fabulous offer that allows you to enjoy a quarter off the regular price on selected items or services.\n\n This voucher is your ticket to some sweet savings—whether you're treating yourself or snagging a great deal for someone special.\n\n Happy shopping!"""),
              ),
              Container(
                padding: EdgeInsets.all(20.w),
                child: Text(
                    """Sure thing! Your "25% discount voucher" is a fabulous offer that allows you to enjoy a quarter off the regular price on selected items or services.\n\n This voucher is your ticket to some sweet savings—whether you're treating yourself or snagging a great deal for someone special.\n\n Happy shopping!"""),
              ),
            ]),
          ),
        ],
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
