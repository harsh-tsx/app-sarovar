import 'package:flutter/material.dart';
import 'package:app_1point2_store/core/app_export.dart';
import 'controller/splashtwo_controller.dart';

// ignore_for_file: must_be_immutable
class SplashtwoScreen extends GetWidget<SplashtwoController> {
  const SplashtwoScreen({Key? key})
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
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 19),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 5),
                CustomImageView(
                  imagePath: ImageConstant.imgGroup2,
                  height: 90,
                  width: 389,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
