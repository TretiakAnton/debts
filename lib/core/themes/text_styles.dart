import 'package:flutter/material.dart';

abstract class AppFonts {
  static const generalSans = 'GeneralSans';
  static const inter = 'Inter';
  static const regular = FontWeight.w400;
  static const medium = FontWeight.w500;
  static const semiBold = FontWeight.w600;
  static const bold = FontWeight.w700;
}

class AppTextStyles {
  static const double size8 = 8.0;
  static const double size9 = 9.0;
  static const double size10 = 10.0;
  static const double size11 = 11.0;
  static const double size12 = 12.0;
  static const double size13 = 13.0;
  static const double size14 = 14.0;
  static const double size16 = 16.0;
  static const double size17 = 17.0;
  static const double size24 = 24.0;
  static const double size26 = 26.0;
  static const double size48 = 48.0;

  // displayLarge: AppColors.textActiveYellowF7E948),
  // displayMedium:  AppColors.textInActiveYellowF5E966),
  // displaySmall:  AppColors.textYellowLightEFE9A1),
  // headlineMedium:  AppColors.textBlack111315),
  // headlineSmall:  AppColors.textGreyLight888B8E),
  // labelMedium:  AppColors.textWhite),
  // labelLarge:  AppColors.textRed),
  // labelSmall: AppColors.textGreen),
  // headlineLarge: AppColors.textGreenSecond,
  // bodyLarge: AppColors.textSecondRed,

  static TextStyle size48BoldActiveYellow(BuildContext context) {
    return Theme.of(context).textTheme.displayLarge!.copyWith(
          fontSize: size48,
          fontWeight: AppFonts.bold,
        );
  }

  static TextStyle size24RegularWhite(BuildContext context) {
    return Theme.of(context).textTheme.labelMedium!.copyWith(
          fontSize: size24,
          fontWeight: AppFonts.regular,
        );
  }

  static TextStyle size24MediumWhite(BuildContext context) {
    return Theme.of(context).textTheme.labelMedium!.copyWith(
          fontSize: size24,
          fontWeight: AppFonts.medium,
        );
  }

  static TextStyle size17RegularWhite(BuildContext context) {
    return Theme.of(context).textTheme.labelMedium!.copyWith(
          fontSize: size17,
          fontWeight: AppFonts.regular,
        );
  }

  static TextStyle size16RegularWhite(BuildContext context) {
    return Theme.of(context).textTheme.labelMedium!.copyWith(
          fontSize: size16,
          fontWeight: AppFonts.regular,
        );
  }

  static TextStyle size16Regular888(BuildContext context) {
    return Theme.of(context).textTheme.headlineSmall!.copyWith(
          fontSize: size16,
          fontWeight: AppFonts.regular,
        );
  }

  static TextStyle size16RegularActiveYellow(BuildContext context) {
    return Theme.of(context).textTheme.displayLarge!.copyWith(
          fontSize: size16,
          fontWeight: AppFonts.regular,
        );
  }

  static TextStyle size14Medium111315(BuildContext context) {
    return Theme.of(context).textTheme.headlineMedium!.copyWith(
          fontSize: size14,
          fontWeight: AppFonts.medium,
        );
  }

  static TextStyle size14MediumWhite(BuildContext context) {
    return Theme.of(context).textTheme.labelMedium!.copyWith(
          fontSize: size14,
          fontWeight: AppFonts.medium,
        );
  }

  static TextStyle size14Regular888(BuildContext context) {
    return Theme.of(context).textTheme.headlineSmall!.copyWith(
          fontSize: size14,
          fontWeight: AppFonts.regular,
        );
  }

  static TextStyle size14RegularWhite(BuildContext context) {
    return Theme.of(context).textTheme.labelMedium!.copyWith(
          fontSize: size14,
          fontWeight: AppFonts.regular,
        );
  }

  static TextStyle size14RegularRed(BuildContext context) {
    return Theme.of(context).textTheme.labelLarge!.copyWith(
          fontSize: size14,
          fontWeight: AppFonts.regular,
        );
  }

  static TextStyle size14RegularYellow(BuildContext context) {
    return Theme.of(context).textTheme.displayLarge!.copyWith(
          fontSize: size14,
          fontWeight: AppFonts.regular,
        );
  }

  static TextStyle size14RegularGreen(BuildContext context) {
    return Theme.of(context).textTheme.labelSmall!.copyWith(
          fontSize: size14,
          fontWeight: AppFonts.regular,
        );
  }

  static TextStyle size14RegularLightYellow(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .displaySmall!
        .copyWith(fontSize: size14, fontWeight: AppFonts.regular, height: 1.4);
  }

  static TextStyle size14RegularActiveYellow(BuildContext context) {
    return Theme.of(context).textTheme.displayLarge!.copyWith(
          fontSize: size14,
          fontWeight: AppFonts.regular,
        );
  }

  static TextStyle size13Medium888(BuildContext context) {
    return Theme.of(context).textTheme.headlineSmall!.copyWith(
          fontSize: size13,
          fontWeight: AppFonts.medium,
        );
  }

  static TextStyle size13Regular888(BuildContext context) {
    return Theme.of(context).textTheme.headlineSmall!.copyWith(
          fontSize: size13,
          fontWeight: AppFonts.regular,
        );
  }

  static TextStyle size13RegularWhite(BuildContext context) {
    return Theme.of(context).textTheme.labelMedium!.copyWith(
          fontSize: size13,
          fontWeight: AppFonts.regular,
        );
  }

  static TextStyle size13SemiBoldInActiveYellow(BuildContext context) {
    return Theme.of(context).textTheme.displayMedium!.copyWith(
          fontSize: size13,
          fontWeight: AppFonts.semiBold,
        );
  }

  static TextStyle size12Medium888(BuildContext context) {
    return Theme.of(context).textTheme.headlineSmall!.copyWith(
          fontSize: size12,
          fontWeight: AppFonts.medium,
        );
  }

  static TextStyle size12MediumWhite(BuildContext context) {
    return Theme.of(context).textTheme.labelMedium!.copyWith(
          fontSize: size12,
          fontWeight: AppFonts.medium,
        );
  }

  static TextStyle size12RegularSecondGreen(BuildContext context) {
    return Theme.of(context).textTheme.headlineLarge!.copyWith(
          fontSize: size12,
          fontWeight: AppFonts.regular,
        );
  }

  static TextStyle size12RegularRed(BuildContext context) {
    return Theme.of(context).textTheme.bodyLarge!.copyWith(
          fontSize: size12,
          fontWeight: AppFonts.regular,
        );
  }

  static TextStyle size12MediumSecondGreen(BuildContext context) {
    return Theme.of(context).textTheme.headlineLarge!.copyWith(
          fontSize: size12,
          fontWeight: AppFonts.medium,
        );
  }

  static TextStyle size12MediumSecondRed(BuildContext context) {
    return Theme.of(context).textTheme.bodyLarge!.copyWith(
          fontSize: size12,
          fontWeight: AppFonts.medium,
        );
  }

  static TextStyle size12Regular888(BuildContext context) {
    return Theme.of(context).textTheme.headlineSmall!.copyWith(
          fontSize: size12,
          fontWeight: AppFonts.regular,
        );
  }

  static TextStyle size12RegularWhite(BuildContext context) {
    return Theme.of(context).textTheme.labelMedium!.copyWith(
          fontSize: size12,
          fontWeight: AppFonts.regular,
        );
  }

  static TextStyle size11Regular888(BuildContext context) {
    return Theme.of(context).textTheme.headlineSmall!.copyWith(
          fontSize: size11,
          fontWeight: AppFonts.regular,
        );
  }

  static TextStyle size11Medium888(BuildContext context) {
    return Theme.of(context).textTheme.headlineSmall!.copyWith(
          fontSize: size11,
          fontWeight: AppFonts.medium,
        );
  }

  static TextStyle size10Regular888(BuildContext context) {
    return Theme.of(context).textTheme.headlineSmall!.copyWith(
          fontSize: size10,
          fontWeight: AppFonts.regular,
        );
  }

  static TextStyle size10RegularActiveYellow(BuildContext context) {
    return Theme.of(context).textTheme.displayMedium!.copyWith(
          fontSize: size10,
          fontWeight: AppFonts.regular,
        );
  }

  static TextStyle size10Medium888(BuildContext context) {
    return Theme.of(context).textTheme.headlineSmall!.copyWith(
          fontSize: size10,
          fontWeight: AppFonts.medium,
        );
  }

  static TextStyle size9Regular888(BuildContext context) {
    return Theme.of(context).textTheme.headlineSmall!.copyWith(
          fontSize: size9,
          fontWeight: AppFonts.regular,
        );
  }

  static TextStyle size8Medium888(BuildContext context) {
    return Theme.of(context).textTheme.headlineSmall!.copyWith(
          fontSize: size8,
          fontWeight: AppFonts.medium,
        );
  }
}
