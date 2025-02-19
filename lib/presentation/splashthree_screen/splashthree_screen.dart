import 'package:app_1point2_store/core/utils/types.dart';
import 'package:flutter/material.dart';
import 'package:app_1point2_store/core/app_export.dart';
import 'controller/splashthree_controller.dart';

class SplashthreeScreen extends GetWidget<SplashthreeController> {
  SplashthreeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: Container(
        width: SizeUtils.width,
        height: SizeUtils.height,
        child: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.appLogo,
                width: SizeUtils.width.percent(80),
              )
            ],
          ),
        ),
      ),
    );
  }
}
