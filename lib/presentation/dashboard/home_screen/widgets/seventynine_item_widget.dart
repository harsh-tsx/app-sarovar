import 'package:flutter/material.dart';
import 'package:app_1point2_store/core/app_export.dart';
import '../controller/home_controller.dart';
import '../models/seventynine_item_model.dart';

// ignore: must_be_immutable
class SeventynineItemWidget extends StatelessWidget {
  SeventynineItemWidget(
    this.seventynineItemModelObj, {
    Key? key,
    this.selected = false,
  }) : super(
          key: key,
        );

  HoroScopeSign seventynineItemModelObj;

  bool selected;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(AppRoutes.dailyHoroscopeRoute,
            arguments: {"zodiac": seventynineItemModelObj.id?.value});
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 23.w,
          vertical: 10.h,
        ),
        decoration: AppDecoration.outlinePrimary7.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
          border: selected
              ? Border.all(
                  color: appTheme.amber50001,
                  width: 3.w,
                )
              : Border.all(
                  color: Colors.transparent,
                  width: 3.w,
                ),
          color: selected ? appTheme.orange50 : null,
        ),
        width: 117.w,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 3.h),
            Obx(
              () => CustomImageView(
                imagePath: seventynineItemModelObj.userImage!.value,
                height: 71.h,
                width: 71.w,
              ),
            ),
            SizedBox(height: 20.h),
            Obx(
              () => Text(
                seventynineItemModelObj.userName!.value,
                style: theme.textTheme.titleMedium!.copyWith(
                  fontSize: 14.fSize,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
