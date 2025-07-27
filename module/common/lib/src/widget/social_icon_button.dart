import 'package:common/common.dart';
import 'package:flutter/material.dart';

/// [SocialconButton] is a [StatelessWidget] that displays a social icon button.
final class SocialconButton extends StatelessWidget {
  const SocialconButton({
    super.key,
    required this.deviceWidth,
    required this.deviceHeight,
    required this.iconData,
  });

  final double deviceWidth;
  final double deviceHeight;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: deviceWidth * 0.20,
      height: deviceHeight * 0.09,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimary,
        border:
            Border.all(color: Colors.black.withOpacity(0.2), width: deviceWidth * 0.001),
        borderRadius: BorderRadiusManager.moreBorderRadius,
      ),
      child: IconButton(
        icon: Icon(iconData),
        onPressed: () {
          // Handle icon button press
        },
      ),
    );
  }
}
