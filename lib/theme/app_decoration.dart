import 'package:flutter/material.dart';
import 'package:app_1point2_store/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillGray5001 => BoxDecoration(
        color: appTheme.gray5001,
      );
  static BoxDecoration get fillGreenA => BoxDecoration(
        color: appTheme.greenA100,
      );
  static BoxDecoration get fillOnError => BoxDecoration(
        color: theme.colorScheme.onError,
      );
  static BoxDecoration get fillOrangeA => BoxDecoration(
        color: appTheme.orangeA70019,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red30066,
      );
  static BoxDecoration get fillRed600 => BoxDecoration(
        color: appTheme.primaryYellow,
      );
  static BoxDecoration get fillRedE => BoxDecoration(
        color: appTheme.red700E5,
      );

  // Gradient decorations
  static BoxDecoration get gradientOnErrorToOrange => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.onError,
            appTheme.orange50,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outline => BoxDecoration(
        color: theme.colorScheme.onError,
        boxShadow: [
          BoxShadow(
            color: appTheme.gray600,
            spreadRadius: 0.1,
            blurRadius: 4,
            offset: Offset(
              2,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineAmber => BoxDecoration(
        color: appTheme.yellow100,
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
  static BoxDecoration get outlineGray => BoxDecoration(
        color: theme.colorScheme.onError,
        border: Border.all(
          color: appTheme.gray300,
          width: 1,
          strokeAlign: strokeAlignOutside,
        ),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: appTheme.gray30001,
            spreadRadius: 0.1,
            blurRadius: 4,
            offset: Offset(
              1,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary1 => BoxDecoration(
        color: theme.colorScheme.onError,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary.withOpacity(0.09),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(
              1,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary10 => BoxDecoration(
        color: theme.colorScheme.onError,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary,
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(
              1,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary2 => BoxDecoration(
        color: appTheme.amber500,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary.withOpacity(0.09),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(
              1,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary3 => BoxDecoration(
        color: theme.colorScheme.onError,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary.withOpacity(0.15),
            spreadRadius: 0.1,
            blurRadius: 4,
            offset: Offset(
              1,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary4 => BoxDecoration(
        color: theme.colorScheme.onError,
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
  static BoxDecoration get outlinePrimary5 => BoxDecoration(
        color: theme.colorScheme.onError,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary.withOpacity(0.15),
            spreadRadius: 0.1,
            blurRadius: 1,
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary6 => BoxDecoration(
        color: theme.colorScheme.onError,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary,
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary7 => BoxDecoration(
        color: theme.colorScheme.onError,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary,
            spreadRadius: 0.1,
            blurRadius: 4,
            offset: Offset(
              2,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary8 => BoxDecoration(
        color: theme.colorScheme.onError,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(
              1,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary9 => BoxDecoration(
        color: theme.colorScheme.onError,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary.withOpacity(0.05),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder15 => BorderRadius.circular(
        15,
      );
  static BorderRadius get circleBorder20 => BorderRadius.circular(
        20,
      );
  static BorderRadius get circleBorder43 => BorderRadius.circular(
        43,
      );
  static BorderRadius get circleBorder50 => BorderRadius.circular(
        50,
      );
  static BorderRadius get circleBorder58 => BorderRadius.circular(
        58,
      );

  // Custom borders
  static BorderRadius get customBorderBL10 => BorderRadius.only(
        topRight: Radius.circular(10),
        bottomLeft: Radius.circular(10),
        bottomRight: Radius.circular(10),
      );
  static BorderRadius get customBorderTL10 => BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
        bottomLeft: Radius.circular(10),
      );
  static BorderRadius get customBorderTL101 => BorderRadius.vertical(
        top: Radius.circular(10),
      );
  static BorderRadius get customBorderTL102 => BorderRadius.only(
        topLeft: Radius.circular(10),
        bottomLeft: Radius.circular(10),
        bottomRight: Radius.circular(10),
      );
  static BorderRadius get customBorderTL20 => BorderRadius.vertical(
        top: Radius.circular(20),
      );
  static BorderRadius get customBorderTL30 => BorderRadius.vertical(
        top: Radius.circular(30),
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10,
      );
  static BorderRadius get roundedBorder34 => BorderRadius.circular(
        34,
      );
  static BorderRadius get roundedBorder37 => BorderRadius.circular(
        37,
      );
  static BorderRadius get roundedBorder5 => BorderRadius.circular(
        5,
      );
  static BorderRadius get roundedBorder83 => BorderRadius.circular(
        83,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
