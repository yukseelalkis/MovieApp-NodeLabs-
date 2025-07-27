import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

/// [AuthLabel] is a [StatelessWidget] that displays
/// the title of the authentication view.
final class AuthLabel extends StatelessWidget {
  /// Constructor
  const AuthLabel({
    required String text,
    super.key,
    TextStyle? style,
    TextAlign textAlign = TextAlign.center,
  })  : _text = text,
        _textAlign = textAlign,
        _style = style;

  /// [_text] is the text to display.
  final String _text;

  /// [_textAlign] is the alignment of the text.
  final TextAlign _textAlign;

  /// [_style] is the style of the text.
  /// If not provided, it will use the default style.
  final TextStyle? _style;

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      textAlign: _textAlign,
      style: _style ??
          Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
    ).tr();
  }
}
