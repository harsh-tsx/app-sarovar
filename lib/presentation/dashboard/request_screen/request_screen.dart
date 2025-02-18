import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/core/utils/app_utils.dart';
import 'package:app_1point2_store/core/utils/types.dart';
import 'package:app_1point2_store/presentation/dashboard/request_screen/widgets/calendar_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'controller/request_screen_controller.dart';

class RequestScreen extends StatefulWidget {
  const RequestScreen({super.key});

  @override
  State<RequestScreen> createState() => _RequestScreenState();
}

class _RequestScreenState extends State<RequestScreen> {
  var controller = isControllerRegistered<RequestScreenController>(RequestScreenController());
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_loadMoreItems);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _loadMoreItems() {
    if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
      controller.getForecastList(controller.page.value + 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.primaryYellow,
      body: SafeArea(
        child: Column(
          children: [
            // Header Section
            _buildHeaderSection(),
            // Inventory Section
            _buildInventorySection(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderSection() {
    return Container(
      height: Get.height * .1,
      width: Get.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(ImageConstant.pageBg),
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 12),
          Text(
            "Request",
            style: GoogleFonts.comfortaa(fontSize: 24, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }

  _buildInventorySection() {
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
                  SizedBox(height: 4.h),
                  CalendarSection(),
                  SizedBox(height: 24.h),
                  Column(
                    children: [
                      Text(
                        "Can Counts:",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.fSize,
                        ),
                      ),
                      SizedBox(
                        width: SizeUtils.width.percent(60),
                        child: TextFormField(
                          controller: controller.waterCan,
                          keyboardType: const TextInputType.numberWithOptions(
                            signed: true,
                            decimal: false,
                          ),
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(RegExp(r'^[1-9][0-9]*$')),
                          ],
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Enter Number',
                            hintText: 'Enter Number',
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 24.h),
                  SizedBox(
                    width: SizeUtils.width.percent(60),
                    child: ElevatedButton(
                      onPressed: () {
                        controller.addForecast();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: appTheme.black900,
                        minimumSize: const Size(double.infinity, 48),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color(0xff375DFB),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 30.h),
                      ),
                      child: Text(
                        'Submit Request',
                        style: GoogleFonts.comfortaa(color: theme.primaryColor),
                      ),
                    ),
                  ),
                  SizedBox(height: 24.h),
                  RefreshIndicator(
                    onRefresh: () async {
                      await controller.getForecastList(0);
                      return null;
                    },
                    child: Container(
                      height: SizeUtils.height.percent(35),
                      child: Obx(
                        () => ListView.builder(
                          controller: _scrollController,
                          physics: const AlwaysScrollableScrollPhysics(),
                          itemCount: controller.forecastList.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            var item = controller.forecastList[index];
                            return Container(
                              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 14.w),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.transparent,
                                  ),
                                  borderRadius: BorderRadius.circular(10)),
                              child: IntrinsicHeight(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    _buildField(title: "Order ID:", value: "${item.id?.substring(0, 5)}..."),
                                    VerticalDivider(
                                      color: Colors.black,
                                      thickness: 1,
                                    ),
                                    _buildField(title: "Cans:", value: "${item?.watercans?.toInt()}"),
                                    VerticalDivider(
                                      color: Colors.black,
                                      thickness: 1,
                                    ),
                                    Container(
                                        width: SizeUtils.width.percent(22),
                                        child: _buildField(title: "Status:", value: "${item?.status}", isStatus: true)),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column _buildField({required String title, required String value, bool isStatus = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: GoogleFonts.comfortaa(fontSize: 10.fSize, fontWeight: FontWeight.w700),
        ),
        Text(
          value,
          style: GoogleFonts.comfortaa(
            color: isStatus
                ? value == "DELIVERED"
                    ? Color(0xff008B23)
                    : Colors.orange
                : appTheme.black900,
            fontSize: 12.fSize,
            fontWeight: FontWeight.w900,
          ),
        ),
      ],
    );
  }
}
