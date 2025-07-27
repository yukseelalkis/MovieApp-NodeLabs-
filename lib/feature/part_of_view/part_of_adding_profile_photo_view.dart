part of '../view/adding_profile_photo_view.dart';

/// [PhotoUploadButton] is a widget that displays a button for uploading a photo.
final class PhotoUploadButton extends StatelessWidget {
  final VoidCallback onPressed;

  const PhotoUploadButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadiusManager.moreBorderRadius,
      child: Container(
        width: context.deviceWidth * 0.4,
        height: context.deviceHeight * 0.18,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.1),
          borderRadius: BorderRadiusManager.moreBorderRadius,
          border: Border.all(
            color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.2),
            width: context.deviceWidth * 0.001,
          ),
        ),
        child: Center(
          child: Icon(
            Icons.add,
            color: Theme.of(context).colorScheme.primary,
            size: context.deviceWidth * 0.1,
          ),
        ),
      ),
    );
  }
}
