import 'package:flutter/material.dart';
import 'package:app_1point2_store/core/app_export.dart';
import 'controller/splashthree_controller.dart';

class SplashthreeScreen extends GetWidget<SplashthreeController> {
  SplashthreeScreen({Key? key});

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
              ImageConstant.appLogo,
            ),
            fit: BoxFit.contain,
          )),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [],
            ),
          ),
        ),
      ),
    );
  }
}
