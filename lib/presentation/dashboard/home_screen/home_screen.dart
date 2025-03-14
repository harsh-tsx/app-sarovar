import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/core/controllers/auth.controller.dart';
import 'package:app_1point2_store/core/utils/app_utils.dart';
import 'package:app_1point2_store/presentation/dashboard/home_screen/widgets/calendar_section.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'controller/home_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var controller = isControllerRegistered<HomeController>(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.primaryYellow,
      body: RefreshIndicator(
        onRefresh: () async {
          await controller.getHomeDashboardData(controller.currentDate);
          return;
        },
        child: SingleChildScrollView(
          child: Container(
            height: Get.height,
            width: Get.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImageConstant.pageBg),
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
            // decoration: BoxDecoration(image: DecorationImage(image: AssetImage(Assets.drops), fit: BoxFit.fill)),
            child: Column(
              children: [
                // Header Section
                _buildHeaderSection(),
                // SizedBox(
                //   height: 100.h,
                // ),
                // Inventory Section
                _buildInventorySection()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeaderSection() {
    return GetBuilder<AuthController>(builder: (context) {
      return Container(
        height: SizeUtils.height * .22,
        width: SizeUtils.width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 25.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SizedBox(),
                ),
                Expanded(
                  child: CustomImageView(
                    imagePath: ImageConstant.appLogo,
                    width: 84.w,
                    height: 37.h,
                    fit: BoxFit.contain,
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      logout();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.logout,
                          size: 18.w,
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          "Logout",
                          style:
                              GoogleFonts.poppins(fontSize: 12.fSize, fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        SizedBox(width: 24.w)
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12.h),
            Obx(
              () => Text(
                "${controller.user?.value?.name}",
                style: GoogleFonts.poppins(fontSize: 16.fSize, fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            const Spacer(),
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildField(
                    title: "Store Number",
                    value: "${controller?.user?.value?.store?.code ?? controller?.user?.value?.store?.name}",
                  ),
                  _buildField(
                    title: "Code",
                    value: "${controller?.user?.value?.$id}",
                  ),
                  _buildField(
                    title: "Location",
                    value: "${controller.distance}m",
                    isLocation: true,
                  )
                ],
              ),
            )
          ],
        ),
      );
    });
  }

  Expanded _buildInventorySection() {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: appTheme.pageBg,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 4.0,
            ),
          ],
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Inventory',
                    style: GoogleFonts.poppins(
                      fontSize: 20.fSize,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  CalendarSection(),
                  const SizedBox(height: 24),
                  Obx(
                    () => GridView.count(
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.all(10.w),
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      mainAxisSpacing: 15.h,
                      crossAxisSpacing: 30.w,
                      children: [
                        _buildStatsCard('Today\'s In', "${(controller.homeDashboard.value?.todaysIn ?? 0.0).toInt()}",
                            Icons.arrow_downward),
                        InkWell(
                          onTap: () {
                            Get.toNamed(AppRoutes.addOrderScreen, arguments: {"type": "OUT"});
                          },
                          child: _buildStatsCard('Today\'s Out',
                              "${(controller.homeDashboard.value?.todaysOut ?? 0.0).toInt()}", Icons.arrow_upward),
                        ),
                        _buildStatsCard('Live Stock', "${(controller.homeDashboard.value?.liveStock ?? 0.0).toInt()}",
                            Icons.inventory),
                        _buildStatsCard('This Month', "${(controller.homeDashboard.value?.thisMonth ?? 0.0).toInt()}",
                            Icons.calendar_month),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column _buildField({required String title, String? value, bool isLocation = false}) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(fontSize: 12.fSize, fontWeight: FontWeight.w500, color: Colors.black),
        ),
        Container(
          height: 40.h,
          width: SizeUtils.width * 0.30,
          decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Color(0xff666666),
                  width: 1,
                ),
                left: BorderSide(
                  color: Color(0xff666666),
                  width: 1,
                ),
                right: BorderSide(
                  color: Color(0xff666666),
                  width: 1,
                ),
                bottom: BorderSide(
                  color: Colors.red,
                  width: 1,
                  style: BorderStyle.none,
                ),
              ),
              borderRadius: const BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10))),
          child: Container(
            margin: EdgeInsets.only(left: 1.w, right: 1.w, top: 1.h),
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: const BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10))),
            child: Center(
              child: isLocation
                  ? controller.outSide.value
                      ? Icon(Icons.close, color: appTheme.red60002)
                      : Icon(Icons.check, color: appTheme.greenA700)
                  : Text(
                      value ?? "",
                      style: GoogleFonts.poppins(fontSize: 16.fSize, fontWeight: FontWeight.w700, color: Colors.black),
                    ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildStatsCard(String label, String value, IconData icon) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: appTheme.black900,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            blurRadius: 10,
            spreadRadius: 1,
            offset: Offset(
              0,
              10,
            ),
          ),
        ],

        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.black.withOpacity(0.2),
        //     spreadRadius: 2,
        //     blurRadius: 4,
        //     offset: const Offset(-3, -3),
        //   ),
        // ],
        border: Border.all(width: 1, color: appTheme.primaryYellow),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(value, style: GoogleFonts.poppins(color: Colors.white, fontSize: 32.fSize, fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          Row(
            children: [
              Expanded(
                child: Divider(
                  thickness: 1,
                  indent: 20,
                  color: appTheme.primaryYellow,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 1, color: appTheme.primaryYellow),
                  color: appTheme.primaryYellow,
                ),
                child: Icon(
                  icon,
                  color: Colors.black,
                  size: 14.w,
                ),
              ),
              Expanded(
                  child: Divider(
                thickness: 1,
                endIndent: 20,
                color: appTheme.primaryYellow,
              )),
            ],
          ),
          SizedBox(height: 14.h),
          Text(label,
              style:
                  GoogleFonts.poppins(fontSize: 16.fSize, fontWeight: FontWeight.w500, color: appTheme.primaryYellow)),
        ],
      ),
    );
  }
}
