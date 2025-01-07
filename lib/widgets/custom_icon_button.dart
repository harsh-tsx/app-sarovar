import 'package:flutter/material.dart';
import '../core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: theme.colorScheme.onError,
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(
                        1,
                        1,
                      ),
                    ),
                  ],
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: theme.colorScheme.onError,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary,
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(
              1,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimaryTL20 => BoxDecoration(
        color: appTheme.gray400,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary,
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(
              1,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get fillPinkA => BoxDecoration(
        color: appTheme.pinkA200,
        borderRadius: BorderRadius.circular(22),
      );
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue700,
        borderRadius: BorderRadius.circular(22),
      );
  static BoxDecoration get fillOrange => BoxDecoration(
        color: appTheme.orange600,
        borderRadius: BorderRadius.circular(22),
      );
  static BoxDecoration get fillPurpleACc => BoxDecoration(
        color: appTheme.purpleA700Cc,
        borderRadius: BorderRadius.circular(22),
      );
  static BoxDecoration get fillErrorContainer => BoxDecoration(
        color: theme.colorScheme.errorContainer,
        borderRadius: BorderRadius.circular(22),
      );
}
