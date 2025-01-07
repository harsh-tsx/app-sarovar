import 'package:flutter/material.dart';
import 'package:app_1point2_store/core/app_export.dart';

// ignore: must_be_immutable
class AppbarImage extends StatelessWidget {
  AppbarImage({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          imagePath: imagePath,
          height: (15 * 2.10).w,
          width: (15 * 2.10).w,
          radius: BorderRadius.circular(100),
          // width: 26.h * 2.10,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
