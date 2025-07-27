import 'package:flutter/material.dart';
import 'package:nodelabscase/product/init/theme/text_theme.dart';
import 'package:nodelabscase/product/init/theme/theme.dart';
import 'package:nodelabscase/product/utility/constants/enums/font_name.dart';

/// [DecidedTheTheme] is a class that contains the theme of the application.
@immutable
final class DecidedTheTheme {
  const DecidedTheTheme._();

  /// [themeConfiguration] is a method that returns the theme of the application.
  static ThemeData themeConfiguration(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;
    final textTheme = CustomTextTheme.createTextTheme(
      context,
      FontName.lato.name, // Body
      FontName.robotoSlab.name, // Header
    );
    final theme = CustomColorScheme(textTheme);

    return brightness != Brightness.light ? theme.light() : theme.dark();
  }
}
