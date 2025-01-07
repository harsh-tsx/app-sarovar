import 'package:flutter/material.dart';
import 'package:app_1point2_store/core/app_export.dart';
import '../controller/home_controller.dart';
import '../models/vivekcardlistsection_item_model.dart';

// ignore: must_be_immutable
class VivekcardlistsectionItemWidget extends StatelessWidget {
  VivekcardlistsectionItemWidget(
    this.vivekcardlistsectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  VivekcardlistsectionItemModel vivekcardlistsectionItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 11,
      ),
      decoration: AppDecoration.outlinePrimary5.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      width: 145,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 95,
            width: 86,
            margin: EdgeInsets.only(left: 16),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath:
                        vivekcardlistsectionItemModelObj.userImage!.value,
                    height: 86,
                    width: 86,
                    radius: BorderRadius.circular(
                      43,
                    ),
                    alignment: Alignment.topCenter,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 15,
                      top: 70,
                      right: 15,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 3,
                    ),
                    decoration: AppDecoration.outlinePrimary3.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgSignal,
                          height: 15,
                          width: 16,
                          margin: EdgeInsets.only(bottom: 2),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Obx(
                            () => Text(
                              vivekcardlistsectionItemModelObj
                                  .ratingText!.value,
                              style: CustomTextStyles.titleSmallInterGray900,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 11),
          Padding(
            padding: EdgeInsets.only(left: 1),
            child: Obx(
              () => Text(
                vivekcardlistsectionItemModelObj.nameText!.value,
                style: CustomTextStyles.titleMediumSemiBold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 31),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgSettingsSecondarycontainer,
                  height: 11,
                  width: 8,
                  margin: EdgeInsets.only(bottom: 6),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3),
                  child: Obx(
                    () => Text(
                      vivekcardlistsectionItemModelObj.timeText!.value,
                      style: CustomTextStyles.bodyMediumSecondaryContainer,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 4),
          SizedBox(
            height: 30,
            width: 125,
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 30,
                    width: 58,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.onError,
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: theme.colorScheme.primary.withOpacity(0.15),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(
                            1,
                            1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Obx(
                  () => CustomImageView(
                    imagePath:
                        vivekcardlistsectionItemModelObj.astroImage!.value,
                    height: 30,
                    width: 110,
                    alignment: Alignment.centerRight,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
