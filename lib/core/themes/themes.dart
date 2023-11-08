import 'package:debts/core/themes/colors.dart';
import 'package:flutter/material.dart';

abstract class AppThemes {
  static ThemeData createLightTheme(BuildContext context) {
    return ThemeData(
      brightness: Brightness.light,
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        elevation: 0,
      ),
    );
  }

  static ThemeData createDarkTheme(BuildContext context) {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.backgroundBlack111315,
      colorScheme: const ColorScheme(
        background: AppColors.backgroundBlack111315,
        onBackground: AppColors.onBackgroundBlack181B1E,
        primaryContainer: AppColors.primaryContainerBlack1F252C,
        onPrimaryContainer: AppColors.onPrimaryContainerBlack232527,
        secondary: AppColors.secondaryGrey878B8E,
        onSecondary: AppColors.onSecondaryGrey555B5E,
        secondaryContainer: AppColors.activeYellowF7E948,
        onSecondaryContainer: AppColors.inActiveYellowF5E966,
        tertiary: AppColors.grey1E2023,
        tertiaryContainer: AppColors.grey1A1E22,
        onTertiary: AppColors.grey1D2023,
        onTertiaryContainer: AppColors.grey53585E,
        onInverseSurface: AppColors.grey212529,

        primary: AppColors.white,
        onPrimary: AppColors.black,
        //

        error: AppColors.white,
        onError: AppColors.white,
        errorContainer: AppColors.white,
        onErrorContainer: AppColors.white,
        shadow: AppColors.white,
        scrim: AppColors.white,

        inversePrimary: AppColors.white,
        // secondaryVariant:  AppColors.white,
        // primaryVariant:  AppColors.white,

        brightness: Brightness.dark,
        //Text
        surface: AppColors.textBlack111315,
        onSurface: AppColors.textGreyLight888B8E,
        surfaceTint: AppColors.textWhite,
        onSurfaceVariant: AppColors.textYellowLightEFE9A1,
        surfaceVariant: AppColors.textActiveYellowF7E948,
        outline: AppColors.textRed,
        outlineVariant: AppColors.textGreen,
        inverseSurface: AppColors.textGreenSecond,
      ),
      appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w400,
          color: AppColors.textWhite,
        ),
        backgroundColor: AppColors.backgroundBlack111315,
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(
          color: AppColors.white,
        ),
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          color: AppColors.textActiveYellowF7E948,
        ),
        displayMedium: TextStyle(
          color: AppColors.textInActiveYellowF5E966,
        ),
        displaySmall: TextStyle(
          color: AppColors.textYellowLightEFE9A1,
        ),
        headlineLarge: TextStyle(
          color: AppColors.textGreenSecond,
        ),
        headlineMedium: TextStyle(
          color: AppColors.textBlack111315,
        ),
        headlineSmall: TextStyle(
          color: AppColors.textGreyLight888B8E,
        ),
        labelMedium: TextStyle(
          color: AppColors.textWhite,
        ),
        labelLarge: TextStyle(
          color: AppColors.textRed,
        ),
        labelSmall: TextStyle(
          color: AppColors.textGreen,
        ),
        bodyLarge: TextStyle(
          color: AppColors.textSecondRed,
        ),
      ),
      // textTheme: TextTheme(
      //   headlineMedium: TextStyle(
      //     color: Theme.of(context).colorScheme.surface,
      //   ),
      //   headlineSmall: TextStyle(
      //     color: Theme.of(context).colorScheme.onSurface,
      //   ),
      //   labelMedium: TextStyle(
      //     color: Theme.of(context).colorScheme.surfaceTint,
      //   ),
      //   labelLarge: TextStyle(
      //     color: Theme.of(context).colorScheme.outline,
      //   ),
      //   labelSmall: TextStyle(
      //     color: Theme.of(context).colorScheme.outlineVariant,
      //   ),
      // ),
      checkboxTheme: CheckboxThemeData(
        checkColor: MaterialStateProperty.all(AppColors.activeYellowF7E948),
        fillColor: MaterialStateProperty.all(AppColors.backgroundBlack111315),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        side: MaterialStateBorderSide.resolveWith(
          (states) => const BorderSide(
            width: 1.0,
            color: AppColors.activeYellowF7E948,
          ),
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.white,
        unselectedItemColor: AppColors.textGreyLight888B8E,
        backgroundColor: AppColors.onBackgroundBlack181B1E,
        selectedLabelStyle: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
