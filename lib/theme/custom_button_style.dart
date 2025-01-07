import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillBlue => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blue800,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      );
  static ButtonStyle get fillDeepOrange => ElevatedButton.styleFrom(
        backgroundColor: appTheme.deepOrange100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      );
  static ButtonStyle get fillGreenA => ElevatedButton.styleFrom(
        backgroundColor: appTheme.greenA100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      );

  static ButtonStyle get fillRedA => ElevatedButton.styleFrom(
        backgroundColor: appTheme.redA700.withOpacity(0.4),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      );

  // Outline button style
  static ButtonStyle get outlineOnError => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: appTheme.primaryYellow,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      );
  static ButtonStyle get outlinePrimary => ElevatedButton.styleFrom(
        backgroundColor: appTheme.primaryYellow,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        shadowColor: theme.colorScheme.primary,
        elevation: 2,
      );
  static ButtonStyle get outlinePrimaryTL12 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.onError,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        shadowColor: theme.colorScheme.primary.withOpacity(0.15),
        elevation: 1,
      );
  static ButtonStyle get outlinePrimaryTL221 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.primaryYellow,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22),
        ),
        shadowColor: theme.colorScheme.primary.withOpacity(0.15),
        elevation: 1,
      );
  static ButtonStyle get outlinePrimaryTL25 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.green900,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        shadowColor: theme.colorScheme.primary.withOpacity(0.15),
        elevation: 1,
      );
  static ButtonStyle get outlinePrimaryTL7 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray5001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7),
        ),
        shadowColor: theme.colorScheme.primary,
        elevation: 4,
      );
  static ButtonStyle get outlineRed => OutlinedButton.styleFrom(
        backgroundColor: appTheme.red5001,
        side: BorderSide(
          color: appTheme.primaryYellow,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
