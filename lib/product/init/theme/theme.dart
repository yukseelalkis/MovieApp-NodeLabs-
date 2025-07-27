import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:lawai/product/init/theme/custom_theme.dart';

/// [CustomColorScheme] is a class that provides the theme for the application.
@immutable
final class CustomColorScheme {
  /// Constructor
  const CustomColorScheme(this.textTheme);

  /// [textTheme] is the text theme of the application.
  final TextTheme textTheme;

  /// [lightScheme] is the light scheme of the application.
  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff485d92),
      surfaceTint: Color(0xff485d92),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffdae2ff),
      onPrimaryContainer: Color(0xff001946),
      secondary: Color(0xff006874),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff9eeffd),
      onSecondaryContainer: Color(0xff001f24),
      tertiary: Color(0xff2d6a45),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffb0f1c2),
      onTertiaryContainer: Color(0xff00210f),
      error: ColorName.raceCarStripe,
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfff5fafb),
      onSurface: Color(0xff171d1e),
      onSurfaceVariant: Color(0xff3f484a),
      outline: Color(0xff6f797a),
      outlineVariant: Color(0xffbfc8ca),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2b3133),
      inversePrimary: Color(0xffb1c5ff),
      primaryFixed: Color(0xffdae2ff),
      onPrimaryFixed: Color(0xff001946),
      primaryFixedDim: Color(0xffb1c5ff),
      onPrimaryFixedVariant: Color(0xff2f4578),
      secondaryFixed: Color(0xff9eeffd),
      onSecondaryFixed: Color(0xff001f24),
      secondaryFixedDim: Color(0xff82d3e0),
      onSecondaryFixedVariant: Color(0xff004f58),
      tertiaryFixed: Color(0xffb0f1c2),
      onTertiaryFixed: Color(0xff00210f),
      tertiaryFixedDim: Color(0xff95d5a8),
      onTertiaryFixedVariant: Color(0xff0f512f),
      surfaceDim: Color(0xffd5dbdc),
      surfaceBright: Color(0xfff5fafb),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeff5f6),
      surfaceContainer: Color(0xffe9eff0),
      surfaceContainerHigh: Color(0xffe3e9ea),
      surfaceContainerHighest: Color(0xffdee3e5),
    );
  }

  /// [light] is the light theme of the application.
  ThemeData light() {
    return theme(lightScheme());
  }

  /// [lightMediumContrastScheme] is the light medium contrast scheme of the application.
  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff2b4174),
      surfaceTint: Color(0xff485d92),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff5e73a9),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff004a53),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff25808c),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff084d2b),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff44815a),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff5fafb),
      onSurface: Color(0xff171d1e),
      onSurfaceVariant: Color(0xff3b4446),
      outline: Color(0xff576162),
      outlineVariant: Color(0xff737c7e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2b3133),
      inversePrimary: Color(0xffb1c5ff),
      primaryFixed: Color(0xff5e73a9),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff455b8f),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff25808c),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff006671),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff44815a),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff2a6743),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd5dbdc),
      surfaceBright: Color(0xfff5fafb),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeff5f6),
      surfaceContainer: Color(0xffe9eff0),
      surfaceContainerHigh: Color(0xffe3e9ea),
      surfaceContainerHighest: Color(0xffdee3e5),
    );
  }

  /// [lightMediumContrast] is the light medium contrast theme of the application.
  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  /// [lightHighContrastScheme] is the light high contrast scheme of the application.
  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff031f51),
      surfaceTint: Color(0xff485d92),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff2b4174),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff00272c),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff004a53),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff002913),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff084d2b),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff5fafb),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff1c2527),
      outline: Color(0xff3b4446),
      outlineVariant: Color(0xff3b4446),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2b3133),
      inversePrimary: Color(0xffe7ebff),
      primaryFixed: Color(0xff2b4174),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff122a5c),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff004a53),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff003238),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff084d2b),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff00351b),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd5dbdc),
      surfaceBright: Color(0xfff5fafb),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeff5f6),
      surfaceContainer: Color(0xffe9eff0),
      surfaceContainerHigh: Color(0xffe3e9ea),
      surfaceContainerHighest: Color(0xffdee3e5),
    );
  }

  /// [lightHighContrast] is the light high contrast theme of the application.
  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  /// [darkScheme] is the dark scheme of the application.
  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffb1c5ff),
      surfaceTint: Color(0xffb1c5ff),
      onPrimary: Color(0xff162e60),
      primaryContainer: Color(0xff2f4578),
      onPrimaryContainer: Color(0xffdae2ff),
      secondary: Color(0xff82d3e0),
      onSecondary: Color(0xff00363d),
      secondaryContainer: Color(0xff004f58),
      onSecondaryContainer: Color(0xff9eeffd),
      tertiary: Color(0xff95d5a8),
      onTertiary: Color(0xff00391d),
      tertiaryContainer: Color(0xff0f512f),
      onTertiaryContainer: Color(0xffb0f1c2),
      error: ColorName.raceCarStripe,
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff0e1415),
      onSurface: Color(0xffdee3e5),
      onSurfaceVariant: Color(0xffbfc8ca),
      outline: Color(0xff899294),
      outlineVariant: Color(0xff3f484a),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdee3e5),
      inversePrimary: Color(0xff485d92),
      primaryFixed: Color(0xffdae2ff),
      onPrimaryFixed: Color(0xff001946),
      primaryFixedDim: Color(0xffb1c5ff),
      onPrimaryFixedVariant: Color(0xff2f4578),
      secondaryFixed: Color(0xff9eeffd),
      onSecondaryFixed: Color(0xff001f24),
      secondaryFixedDim: Color(0xff82d3e0),
      onSecondaryFixedVariant: Color(0xff004f58),
      tertiaryFixed: Color(0xffb0f1c2),
      onTertiaryFixed: Color(0xff00210f),
      tertiaryFixedDim: Color(0xff95d5a8),
      onTertiaryFixedVariant: Color(0xff0f512f),
      surfaceDim: Color(0xff0e1415),
      surfaceBright: Color(0xff343a3b),
      surfaceContainerLowest: Color(0xff090f10),
      surfaceContainerLow: Color(0xff171d1e),
      surfaceContainer: Color(0xff1b2122),
      surfaceContainerHigh: Color(0xff252b2c),
      surfaceContainerHighest: Color(0xff303637),
    );
  }

  /// [dark] is the dark theme of the application.
  ThemeData dark() {
    return theme(darkScheme());
  }

  /// [darkMediumContrastScheme] is the dark medium contrast scheme of the application.
  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffb7caff),
      surfaceTint: Color(0xffb1c5ff),
      onPrimary: Color(0xff00143b),
      primaryContainer: Color(0xff7a90c8),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xff86d7e5),
      onSecondary: Color(0xff001a1d),
      secondaryContainer: Color(0xff499ca9),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xff99d9ac),
      onTertiary: Color(0xff001b0b),
      tertiaryContainer: Color(0xff609e74),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff0e1415),
      onSurface: Color(0xfff6fcfd),
      onSurfaceVariant: Color(0xffc3ccce),
      outline: Color(0xff9ba5a6),
      outlineVariant: Color(0xff7b8587),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdee3e5),
      inversePrimary: Color(0xff314679),
      primaryFixed: Color(0xffdae2ff),
      onPrimaryFixed: Color(0xff000f31),
      primaryFixedDim: Color(0xffb1c5ff),
      onPrimaryFixedVariant: Color(0xff1d3466),
      secondaryFixed: Color(0xff9eeffd),
      onSecondaryFixed: Color(0xff001417),
      secondaryFixedDim: Color(0xff82d3e0),
      onSecondaryFixedVariant: Color(0xff003c44),
      tertiaryFixed: Color(0xffb0f1c2),
      onTertiaryFixed: Color(0xff001508),
      tertiaryFixedDim: Color(0xff95d5a8),
      onTertiaryFixedVariant: Color(0xff003f21),
      surfaceDim: Color(0xff0e1415),
      surfaceBright: Color(0xff343a3b),
      surfaceContainerLowest: Color(0xff090f10),
      surfaceContainerLow: Color(0xff171d1e),
      surfaceContainer: Color(0xff1b2122),
      surfaceContainerHigh: Color(0xff252b2c),
      surfaceContainerHighest: Color(0xff303637),
    );
  }

  /// [darkMediumContrast] is the dark medium contrast theme of the application.
  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  /// [darkHighContrastScheme] is the dark high contrast scheme of the application.
  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffcfaff),
      surfaceTint: Color(0xffb1c5ff),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffb7caff),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfff1fdff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xff86d7e5),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffefffef),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xff99d9ac),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff0e1415),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfff3fcfe),
      outline: Color(0xffc3ccce),
      outlineVariant: Color(0xffc3ccce),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdee3e5),
      inversePrimary: Color(0xff0e2859),
      primaryFixed: Color(0xffe0e6ff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffb7caff),
      onPrimaryFixedVariant: Color(0xff00143b),
      secondaryFixed: Color(0xffaaf3ff),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xff86d7e5),
      onSecondaryFixedVariant: Color(0xff001a1d),
      tertiaryFixed: Color(0xffb4f6c7),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xff99d9ac),
      onTertiaryFixedVariant: Color(0xff001b0b),
      surfaceDim: Color(0xff0e1415),
      surfaceBright: Color(0xff343a3b),
      surfaceContainerLowest: Color(0xff090f10),
      surfaceContainerLow: Color(0xff171d1e),
      surfaceContainer: Color(0xff1b2122),
      surfaceContainerHigh: Color(0xff252b2c),
      surfaceContainerHighest: Color(0xff303637),
    );
  }

  /// [darkHighContrast] is the dark high contrast theme of the application.
  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  /// [theme] is the theme of the application.
  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
        elevatedButtonTheme: CustomWidgetThemes.elevatedButtonTheme(colorScheme),
        outlinedButtonTheme: CustomWidgetThemes.outlinedButtonTheme(colorScheme),
        drawerTheme: CustomWidgetThemes.drawerTheme(colorScheme),
      );

  /// [extendedColors] is the extended colors of the application.
  List<ExtendedColor> get extendedColors => [];
}

/// [ExtendedColor] is a class that provides the extended colors of the application.
final class ExtendedColor {
  /// Constructor
  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });

  /// [seed] is the seed color of the application.
  final Color seed;

  /// [value] is the value color of the application.
  final Color value;

  /// [light] is the light color family of the application.
  final ColorFamily light;

  /// [lightHighContrast] is the light high contrast color family of the application.
  final ColorFamily lightHighContrast;

  /// [lightMediumContrast] is the light medium contrast color family of the application.
  final ColorFamily lightMediumContrast;

  /// [dark] is the dark color family of the application.
  final ColorFamily dark;

  /// [darkHighContrast] is the dark high contrast color family of the application.
  final ColorFamily darkHighContrast;

  /// [darkMediumContrast] is the dark medium contrast color family of the application.
  final ColorFamily darkMediumContrast;
}

/// [ColorFamily] is a class that provides the color family of the application.
final class ColorFamily {
  /// Constructor
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  /// [color] is the color of the application.
  final Color color;

  /// [onColor] is the on color of the application.
  final Color onColor;

  /// [colorContainer] is the color container of the application.
  final Color colorContainer;

  /// [onColorContainer] is the on color container of the application.
  final Color onColorContainer;
}
