import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/core/utils/app_utils.dart';
import 'package:app_1point2_store/core/utils/types.dart';
import 'package:app_1point2_store/presentation/dashboard/add_order/add_order.controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddOrderScreen extends StatelessWidget {
  AddOrderScreen({super.key});
  var controller =
      isControllerRegistered<AddOrderController>(AddOrderController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        alignment: Alignment.center,
        width: SizeUtils.width,
        height: SizeUtils.height,
        decoration: BoxDecoration(
          color: Color(0xffE4DABA),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Today's Order",
              style: TextStyle(
                fontSize: 20.fSize,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              width: SizeUtils.width.percent(50),
              padding: EdgeInsets.all(10.w),
              decoration: BoxDecoration(
                color: appTheme.primaryYellow,
              ),
              child: Column(
                children: [
                  Text(
                    "ABC store",
                    style: TextStyle(
                      fontSize: 25.fSize,
                      color: appTheme.black900,
                    ),
                  ),
                  Text(
                    "Can Requiredments:",
                    style: TextStyle(
                      fontSize: 16.fSize,
                      color: appTheme.black900,
                    ),
                  ),
                  Obx(
                    () => Text(
                      "${controller.canCount.value}/40",
                      style: TextStyle(
                        fontSize: 26.fSize,
                        fontWeight: FontWeight.bold,
                        color: appTheme.black900,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: SizeUtils.height.percent(50),
              alignment: Alignment.center,
              child: Obx(
                () => GridView.builder(
                  itemCount: controller.canCount.value,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: controller.crossAxisCount.value,
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 2),
                  itemBuilder: (BuildContext context, int index) {
                    var width = SizeUtils.width
                        .percent(69 * 1 / controller.crossAxisCount.value);
                    var height = (300 * 1 / controller.crossAxisCount.value);

                    var fontSize = 20;
                    if (controller.crossAxisCount.value == 5) {
                      fontSize = 10;
                    } else if (controller.crossAxisCount.value == 4) {
                      fontSize = 12;
                    } else if (controller.crossAxisCount.value == 3) {
                      fontSize = 14;
                    } else if (controller.crossAxisCount.value == 2) {
                      fontSize = 16;
                    }

                    return InkWell(
                      onTap: () {
                        controller.canCount.value = index + 1;
                        if (controller.canCount.value >= 5) {
                          controller.crossAxisCount.value = 5;
                        } else {
                          controller.crossAxisCount.value =
                              controller.canCount.value;
                        }
                      },
                      child: Container(
                        margin: EdgeInsets.all(10.w),
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(8.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                              width: width,
                              height: height,
                              imagePath: ImageConstant.can,
                              fit: BoxFit.contain,
                            ),
                            Text(
                              "Sr no. 1",
                              style: TextStyle(
                                fontSize: fontSize.fSize,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: ElevatedButton(
                onPressed: () {
                  controller.canCount.value = controller.canCount.value + 1;
                  if (controller.canCount.value >= 5) {
                    controller.crossAxisCount.value = 5;
                  } else {
                    controller.crossAxisCount.value = controller.canCount.value;
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: appTheme.black900,
                  minimumSize: const Size(double.infinity, 48),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 30.h,
                  ),
                ),
                child: Text(
                  'Submit Deliveries',
                  style: GoogleFonts.comfortaa(color: theme.primaryColor),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
