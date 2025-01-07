import 'package:app_1point2_store/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.height,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
  }) : super(
          key: key,
        );

  final double? height;

  final Style? styleType;

  final double? leadingWidth;

  final Widget? leading;

  final Widget? title;

  final bool? centerTitle;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height ?? 100,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        SizeUtils.width,
        height ?? 100,
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgFill:
        return Container(
          height: 100,
          width: double.maxFinite,
          decoration: BoxDecoration(
              color: appTheme.red60002,
              image: DecorationImage(
                  image: AssetImage(ImageConstant.appBarBg),
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter)),
        );
      default:
        return null;
    }
  }
}

enum Style {
  bgFill,
}
