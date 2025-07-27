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
    return BlocSelector<ProfileViewModel, ProfileState, File?>(
      selector: (state) {
        return state.profilePhoto;
      },
      builder: (_, profilePhoto) {
        return InkWell(
          onTap: onPressed,
          borderRadius: BorderRadiusManager.moreBorderRadius,
          child: Container(
            clipBehavior: Clip.antiAlias,
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
            child: profilePhoto == null
                ? Icon(
                    Icons.add,
                    color: Theme.of(context).colorScheme.primary,
                    size: context.deviceWidth * 0.1,
                  )
                : Image.file(
                    height: double.infinity,
                    width: double.infinity,
                    profilePhoto,
                    fit: BoxFit.cover,
                  ),
          ),
        );
      },
    );
  }
}
