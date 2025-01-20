import 'package:app_1point2_store/core/app_export.dart';
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: Get.height,
            width: Get.width,
            // decoration: BoxDecoration(image: DecorationImage(image: AssetImage(Assets.drops), fit: BoxFit.fill)),
            child: Column(
              children: [
                // Header Section
                _buildHeaderSection(),
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
    return Container(
      height: Get.height * .2,
      width: Get.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(ImageConstant.pageBg),
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () {
              logout();
            },
            child: Padding(
              padding: EdgeInsets.all(8.0.w),
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
                    style: GoogleFonts.comfortaa(
                        fontSize: 12.fSize, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(width: 24.w)
                ],
              ),
            ),
          ),
          SizedBox(height: 12.h),
          CustomImageView(
            imagePath: ImageConstant.appLogo,
            width: 60.w,
          ),
          SizedBox(height: 5.h),
          Obx(
            () => Text(
              "${controller.user?.value?.name}",
              style: GoogleFonts.comfortaa(
                  fontSize: 18.fSize, fontWeight: FontWeight.w700),
            ),
          ),
          const Spacer(),
          Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildField(
                  title: "Store Number",
                  value:
                      "${controller?.user?.value?.store?.code ?? controller?.user?.value?.store?.name}",
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
  }

  Expanded _buildInventorySection() {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: appTheme.pageBg,
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20))),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Inventory',
                    style: GoogleFonts.comfortaa(
                        fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 4),
                  CalendarSection(),
                  const SizedBox(height: 24),
                  Obx(
                    () => GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                      children: [
                        _buildStatsCard(
                            'Today\'s In',
                            "${(controller.homeDashboard.value?.todaysIn ?? 0.0).toInt()}",
                            Icons.arrow_downward),
                        InkWell(
                          onTap: () {
                            Get.toNamed(AppRoutes.canOutScreen);
                          },
                          child: _buildStatsCard(
                              'Today\'s Out',
                              "${(controller.homeDashboard.value?.todaysOut ?? 0.0).toInt()}",
                              Icons.arrow_upward),
                        ),
                        _buildStatsCard(
                            'Live Stock',
                            "${(controller.homeDashboard.value?.liveStock ?? 0.0).toInt()}",
                            Icons.inventory),
                        _buildStatsCard(
                            'This Month',
                            "${(controller.homeDashboard.value?.thisMonth ?? 0.0).toInt()}",
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

  Column _buildField(
      {required String title, String? value, bool isLocation = false}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: GoogleFonts.comfortaa(
              fontSize: 12.fSize, fontWeight: FontWeight.w400),
        ),
        Container(
          height: 55.h,
          width: Get.width * 0.30,
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
              ),
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10), topLeft: Radius.circular(10))),
          child: Container(
            margin: EdgeInsets.only(left: 1.w, right: 1.w, top: 1.h),
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10))),
            child: Center(
              child: isLocation
                  ? controller.outSide.value
                      ? Icon(Icons.close, color: appTheme.red60002)
                      : Icon(Icons.check, color: appTheme.greenA700)
                  : Text(
                      value ?? "",
                      style: GoogleFonts.comfortaa(
                          fontSize: 16.fSize, fontWeight: FontWeight.w700),
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
          Text(value,
              style: GoogleFonts.comfortaa(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          Row(
            children: [
              Expanded(
                  child: Divider(
                thickness: 1,
                indent: 20,
                color: appTheme.primaryYellow,
              )),
              Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border:
                        Border.all(width: 1, color: appTheme.primaryYellow)),
                child: Icon(
                  icon,
                  color: appTheme.primaryYellow,
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
              style: GoogleFonts.comfortaa(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: appTheme.primaryYellow)),
        ],
      ),
    );
  }
}
