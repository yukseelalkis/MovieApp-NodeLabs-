part of '../view/profile_view.dart';

final class _ProfileListTile extends StatelessWidget {
  const _ProfileListTile();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileViewModel, ProfileState>(
      builder: (context, state) {
        return ListTile(
          leading: CircleAvatar(
            radius: BorderRadiusManager.extraMoreBorderRadius.topLeft.x,
            backgroundImage: state.profile?.photoUrl == null
                ? null
                : CachedNetworkImageProvider(
                    state.profile!.photoUrl!,
                  ),
          ),
          title: Text(
            state.profile?.name ?? '',
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold,
              fontSize: context.deviceWidth * 0.04,
            ),
          ),
          subtitle: Text(
            state.profile?.id ?? '',
            style: TextStyle(
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6),
              fontSize: context.deviceWidth * 0.03,
            ),
          ),
          trailing: CustomElevatedButton(
            height: context.deviceHeight * 0.045,
            width: context.deviceWidth * 0.3,
            onPressed: () async {
              await context.router.push(const AddingProfilePhotoRoute());
            },
            child: Text(
              LocaleKeys.profile_add_photo,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                    fontSize: context.deviceWidth * 0.028,
                  ),
            ).tr(),
          ),
          contentPadding: EdgeInsets.zero,
        );
      },
    );
  }
}

final class _ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _ProfileAppBar();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: const Text(LocaleKeys.profile_profile_detail).tr(),
      actions: [
        Padding(
          padding: EdgeInsets.only(left: context.deviceWidth * 0.04),
          child: ClipRRect(
            borderRadius: BorderRadiusManager.extraMoreBorderRadius,
            child: CustomElevatedButton(
              height: context.deviceHeight * 0.045,
              width: context.deviceWidth * 0.3,
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.diamond,
                    color: Theme.of(context).colorScheme.primary,
                    size: context.deviceWidth * 0.05,
                  ),
                  Text(
                    LocaleKeys.profile_limited_offer,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: context.deviceWidth * 0.02,
                        ),
                  ).tr(),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
