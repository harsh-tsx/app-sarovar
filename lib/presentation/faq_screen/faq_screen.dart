import 'package:flutter/material.dart';
import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/widgets/app_bar/custom_app_bar.dart';
import 'controller/faq_controller.dart';

// ignore_for_file: must_be_immutable
class FaqScreen extends GetWidget<FaqController> {
  const FaqScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [
                theme.colorScheme.onError,
                appTheme.orange50,
              ],
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                _buildAppBar(),
                SizedBox(height: 20),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      margin: EdgeInsets.only(bottom: 5),
                      padding: EdgeInsets.symmetric(horizontal: 21),
                      child: Column(
                        children: [
                          _buildAstrologerQuestions(
                            questionText: "msg_q1_what_questions".tr,
                          ),
                          SizedBox(height: 10),
                          _buildExpandableList(),
                          SizedBox(height: 11),
                          _buildAstrologerQuestions(
                            questionText: "msg_q1_what_can_an_astrologer".tr,
                          ),
                          SizedBox(height: 10),
                          _buildAstrologerQuestions(
                            questionText: "msg_q1_can_astrology".tr,
                          ),
                          SizedBox(height: 10),
                          _buildAstrologerQuestions(
                            questionText: "msg_q1_are_astrology".tr,
                          ),
                          SizedBox(height: 10),
                          _buildAstrologerQuestions(
                            questionText: "msg_q1_how_can_i_check".tr,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppBar() {
    return SizedBox(
      height: 100,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          CustomAppBar(),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 100,
              width: 110,
              padding: EdgeInsets.symmetric(
                horizontal: 21,
                vertical: 20,
              ),
              decoration: AppDecoration.fillRed.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder50,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowDown,
                height: 22,
                width: 26,
                alignment: Alignment.bottomLeft,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 77,
                bottom: 18,
              ),
              child: Text(
                "lbl_faq".tr,
                style: CustomTextStyles.titleLargeRobotoOnError,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgSmallRectangle,
            height: 81,
            width: 68,
            radius: BorderRadius.circular(
              34,
            ),
            alignment: Alignment.topRight,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildExpandableList() {
    return SizedBox();
  }

  /// Common widget
  Widget _buildAstrologerQuestions({required String questionText}) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11,
        vertical: 18,
      ),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1),
            child: Text(
              questionText,
              style: CustomTextStyles.titleSmallPoppinsPrimary.copyWith(
                color: theme.colorScheme.primary.withOpacity(1),
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowDownErrorcontainer,
            height: 8,
            width: 15,
            margin: EdgeInsets.only(
              top: 8,
              right: 3,
              bottom: 5,
            ),
          ),
        ],
      ),
    );
  }
}
