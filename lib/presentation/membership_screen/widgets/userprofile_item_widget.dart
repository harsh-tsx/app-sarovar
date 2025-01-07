import 'package:app_1point2_store/core/utils/types.dart';
import 'package:flutter/material.dart';
import 'package:app_1point2_store/core/app_export.dart';
import '../controller/membership_controller.dart';
import '../models/userprofile_item_model.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  var controller = Get.find<MembershipController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38.h,
      width: 373.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 373.w.percent(40),
            child: Text(
              userprofileItemModelObj.dynamicText!.value,
              style: CustomTextStyles.bodySmallPrimary,
            ),
          ),
          Obx(
            () => Text(
              userprofileItemModelObj.text!.value,
              style: CustomTextStyles.titleLarge22,
            ),
          ),
          Container(
            width: 18.w,
            height: 18.w,
            color: appTheme.primaryYellow,
            child: Icon(
              Icons.check,
              size: 16.fSize,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
