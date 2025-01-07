import 'package:flutter/material.dart';
import 'package:app_1point2_store/core/app_export.dart';
import 'controller/splashmain_controller.dart';

// ignore_for_file: must_be_immutable
class SplashmainScreen extends GetWidget<SplashmainController> {
  const SplashmainScreen({Key? key})
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
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgSplashmain,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup33849,
              height: 52,
              width: 293,
              alignment: Alignment.center,
            ),
          ),
        ),
      ),
    );
  }
}
