import 'package:common/common.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

/// [AuthLabel] is a [StatelessWidget] that displays
/// the title (and optionally subtitle) of the authentication view.
final class AuthLabel extends StatelessWidget {
  /// Constructor
  const AuthLabel({
    required String text,
    String? subtitle,
    super.key,
    TextStyle? style,
    TextAlign textAlign = TextAlign.center,
    TextStyle? subtitleStyle,
  })  : _text = text,
        _subtitle = subtitle,
        _textAlign = textAlign,
        _style = style,
        _subtitleStyle = subtitleStyle;

  /// [_text] is the main text (title) to display.
  final String _text;

  /// [_subtitle] is the optional subtitle text.
  final String? _subtitle;

  /// [_textAlign] is the alignment of the text.
  final TextAlign _textAlign;

  /// [_style] is the style of the main text.
  final TextStyle? _style;

  /// [_subtitleStyle] is the style of the subtitle text.
  final TextStyle? _subtitleStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          _text,
          textAlign: _textAlign,
          style: _style ??
              Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
        ).tr(),
        if (_subtitle != null) ...[
          Padding(
            padding: EdgeInsets.only(
              top: PaddingManager.normalPadding(context),
            ),
            child: Text(
              _subtitle,
              textAlign: _textAlign,
              style: _subtitleStyle ??
                  Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).hintColor,
                      ),
            ).tr(),
          ),
        ],
      ],
    );
  }
}
