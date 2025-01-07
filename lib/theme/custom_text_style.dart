import 'package:flutter/material.dart';

import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeErrorContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodyLargeGray60002 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray60002,
      );
  static get bodyLargeGray700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray700,
      );
  static get bodyLargeGreen900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.green900,
      );
  static get bodyLargeOnError => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get bodyLargePoppinsErrorContainer =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodyLargePoppinsGray50001 =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: appTheme.gray50001,
      );
  static get bodyLargeRed600 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.primaryYellow,
      );
  static get bodyLargeRoboto => theme.textTheme.bodyLarge!.roboto;
  static get bodyLargeRobotoGreen900 =>
      theme.textTheme.bodyLarge!.roboto.copyWith(
        color: appTheme.green900,
      );
  static get bodyLargeRobotoOnSecondaryContainer =>
      theme.textTheme.bodyLarge!.roboto.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static get bodyLargeRobotoRed60002 =>
      theme.textTheme.bodyLarge!.roboto.copyWith(
        color: appTheme.red60002,
      );
  static get bodyLarge_1 => theme.textTheme.bodyLarge!;
  static get bodyLargeffe73035 => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFFE73035),
      );
  static get bodyLargeffffffff => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFFFFFFFF),
      );
  static get bodyMediumBluegray100 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray100,
      );
  static get bodyMediumBluegray10001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray10001,
      );
  static get bodyMediumGray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray900,
      );
  static get bodyMediumGreen900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.green900,
        fontSize: 15.fSize,
      );
  static get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyMediumPoppinsBluegray10001 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.blueGray10001,
      );
  static get bodyMediumPoppinsErrorContainer =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodyMediumPoppinsGray50001 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.gray50001,
      );
  static get bodyMediumPoppinsPrimary =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get bodyMediumRed600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.primaryYellow,
        fontSize: 15.fSize,
      );
  static get bodyMediumRed60002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.red60002,
      );
  static get bodyMediumRobotoOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyMediumRobotoSecondaryContainer =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  static get bodyMediumSecondaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  static get bodySmallMontserratPrimary =>
      theme.textTheme.bodySmall!.montserrat.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get bodySmallOnError => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get bodySmallPoppinsPrimary =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get bodySmallRed600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.primaryYellow,
      );
  static get bodySmallffffffff => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFFFFFFFF),
      );
  // Headline text style
  static get headlineLargeRighteousOnError =>
      theme.textTheme.headlineLarge!.righteous.copyWith(
        color: theme.colorScheme.onError,
        fontWeight: FontWeight.w400,
      );
  static get headlineMediumOnPrimary =>
      theme.textTheme.headlineMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get headlineMediumffffffff => theme.textTheme.headlineMedium!.copyWith(
        color: Color(0XFFFFFFFF),
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  // Inter text style
  static get interGray30001 => TextStyle(
        color: appTheme.gray30001,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).inter;
  // Label text style
  static get labelLargeOpenSansDeeporangeA700 =>
      theme.textTheme.labelLarge!.openSans.copyWith(
        color: appTheme.deepOrangeA700,
      );
  static get labelLargeOpenSansOnError =>
      theme.textTheme.labelLarge!.openSans.copyWith(
        color: theme.colorScheme.onError,
      );
  static get labelLargeOpenSansffffb900 =>
      theme.textTheme.labelLarge!.openSans.copyWith(
        color: Color(0XFFFFB900),
        fontWeight: FontWeight.w500,
      );
  static get labelLargeOpenSansffffffff =>
      theme.textTheme.labelLarge!.openSans.copyWith(
        color: Color(0XFFFFFFFF),
        fontWeight: FontWeight.w500,
      );
  // Righteous text style
  static get righteousPrimary => TextStyle(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 60.fSize,
        fontWeight: FontWeight.w400,
      ).righteous;
  // Title text style
  static get titleLarge21 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 21.fSize,
      );
  static get titleLarge22 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 22.fSize,
      );
  static get titleLargeBluegray400 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray400,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeGray50001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray50001,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeOnError => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onError,
        fontSize: 21.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeOnError_1 => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get titleLargeRoboto => theme.textTheme.titleLarge!.roboto.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleLargeRobotoOnError =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: theme.colorScheme.onError,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeRobotoOnError_1 =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: theme.colorScheme.onError,
      );
  static get titleLargeRobotoffffffff =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: Color(0XFFFFFFFF),
        fontWeight: FontWeight.w600,
      );
  static get titleLargeRobotoffffffff_1 =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: Color(0XFFFFFFFF),
      );
  static get titleLargeSemiBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleLargeffffffff => theme.textTheme.titleLarge!.copyWith(
        color: Color(0XFFFFFFFF),
      );
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMediumAmber50001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.amber50001,
        fontSize: 19.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray50001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50001,
      );
  static get titleMediumGray600 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGreen900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.green900,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumInterOnError =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.onError,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumInterRed600 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.primaryYellow,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnError => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onError,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppins =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMediumPoppinsMedium =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsOnError =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: theme.colorScheme.onError,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsRed60002 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.red60002,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsSemiBold =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPoppinsffffffff =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: Color(0XFFFFFFFF),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPoppinsffffffffMedium =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: Color(0XFFFFFFFF),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumRed600 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.primaryYellow,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumRed600_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.primaryYellow,
      );
  static get titleMediumRoboto => theme.textTheme.titleMedium!.roboto;
  static get titleMediumRobotoMedium =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumRobotoff000000 =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: Color(0XFF000000),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumffe73035 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFFE73035),
      );
  static get titleMediumffe73035SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFFE73035),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumffffb900 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFFFFB900),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallGray60001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray60001,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallInterGray900 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallOnError => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onError,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPoppinsPrimary =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get titleSmallPoppinsPrimaryMedium =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPrimary_1 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get titleSmallRobotoOnError =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: theme.colorScheme.onError,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallRobotoRed600 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.primaryYellow,
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get openSans {
    return copyWith(
      fontFamily: 'Open Sans',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get righteous {
    return copyWith(
      fontFamily: 'Righteous',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
