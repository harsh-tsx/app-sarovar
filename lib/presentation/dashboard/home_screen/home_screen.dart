import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/core/controllers/auth.controller.dart';
import 'package:app_1point2_store/core/utils/app_utils.dart';
import 'package:app_1point2_store/core/utils/types.dart';
import 'package:app_1point2_store/presentation/dashboard/dashboard_controller.dart';
import 'package:app_1point2_store/presentation/dashboard/home_screen/widgets/calendar_section.dart';
import 'package:app_1point2_store/widgets/custom_elevated_button.dart';
import 'package:app_1point2_store/widgets/custom_outlined_button.dart';
import 'package:app_1point2_store/widgets/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

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
    return SizedBox(
      height: Get.height * .2,
      width: Get.width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Icon(
                    Icons.logout,
                    size: 18,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    "Logout",
                    style: GoogleFonts.comfortaa(
                        fontSize: 12, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(width: 24)
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
          Obx(
            () => Text(
              "${controller.user?.value?.name}",
              style: GoogleFonts.comfortaa(
                  fontSize: 24, fontWeight: FontWeight.w700),
            ),
          ),
          const Spacer(),
          Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildField(
                  title: "Store Number",
                  value: "${controller?.user?.value?.store?.name}",
                ),
                _buildField(
                  title: "Code",
                  value: "${controller?.user?.value?.$id}",
                ),
                _buildField(
                  title: "Location",
                  value: "${controller.distance}m",
                  // isLocation: true,
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
            color: theme.scaffoldBackgroundColor,
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
                            "${controller.homeDashboard.value?.todaysIn}",
                            Icons.arrow_downward),
                        _buildStatsCard(
                            'Today\'s Out',
                            "${controller.homeDashboard.value?.todaysOut}",
                            Icons.arrow_upward),
                        _buildStatsCard(
                            'Live Stock',
                            "${controller.homeDashboard.value?.liveStock}",
                            Icons.inventory),
                        _buildStatsCard(
                            'This Month',
                            "${controller.homeDashboard.value?.thisMonth}",
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
          style:
              GoogleFonts.comfortaa(fontSize: 12, fontWeight: FontWeight.w400),
        ),
        Container(
          height: 55,
          width: Get.width * 0.327,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    appTheme.black900.withOpacity(0.5),
                    appTheme.black900.withOpacity(0.3)
                  ]),
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10), topLeft: Radius.circular(10))),
          child: Container(
            margin: const EdgeInsets.only(left: 1, right: 1, top: 1),
            decoration: BoxDecoration(
                color: appTheme.primaryYellow,
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10))),
            child: Center(
              child: isLocation
                  ? Icon(Icons.check, color: appTheme.greenA700)
                  : Text(
                      value ?? "",
                      style: GoogleFonts.comfortaa(
                          fontSize: 16, fontWeight: FontWeight.w700),
                    ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildStatsCard(String label, String value, IconData icon) {
    return Container(
      padding: const EdgeInsets.all(16),
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
                  size: 14,
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
          const SizedBox(height: 14),
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
