import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:common/common.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nodelabscase/feature/view/mixin/profile_view_mixin.dart';
import 'package:nodelabscase/feature/view/widget/auth_label.dart';
import 'package:nodelabscase/feature/viewmodel/profile_view_model.dart';
import 'package:nodelabscase/product/init/language/locale_keys.g.dart';
import 'package:nodelabscase/product/navigation/app_router.dart';
import 'package:nodelabscase/product/state/profile_state.dart';

part '../part_of_view/part_of_profile_view.dart';

@RoutePage()

/// [ProfileView] is a class that contains the home view.
final class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

final class _ProfileViewState extends State<ProfileView> with ProfileViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _ProfileAppBar(),
      body: BlocProvider.value(
        value: profileViewModel,
        child: SafeArea(
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: PaddingManager.normalPadding(context)),
            child: Column(
              children: [
                _ProfileListTile(profileViewModel: profileViewModel),
                Padding(
                  padding: PaddingManager.normalPaddingSymmetricVertical(context),
                  child: AuthLabel(
                    text: LocaleKeys.profile_liked_movies,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: likedMoviesTitleFontSize,
                    ),
                  ),
                ),
                const _LikedMovies(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

final class _LikedMovies extends StatelessWidget {
  const _LikedMovies();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<ProfileViewModel, ProfileState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state.favoriteMovies == null || state.favoriteMovies!.isEmpty) {
            return Center(
              child: const Text(LocaleKeys.error_could_not_find_favorite_movies).tr(),
            );
          }

          return GridView.builder(
            padding: const EdgeInsets.symmetric(vertical: 12),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 0.7,
            ),
            itemCount: state.favoriteMovies!.length,
            itemBuilder: (context, index) {
              final movie = state.favoriteMovies![index];
              return FilmCard(
                imageUrl: movie.Poster?.replaceFirst('http://', 'https://') ?? '',
                title: movie.Title ?? '',
                subtitle: movie.Genre ?? '',
              );
            },
          );
        },
      ),
    );
  }
}

final class FilmCard extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const FilmCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
  });

  @override
  State<FilmCard> createState() => _FilmCardState();
}

class _FilmCardState extends State<FilmCard> {
  @override
  Widget build(BuildContext context) {
    double textPadding = 8;

    return GestureDetector(
      onTap: () {},
      child: Container(
        width: context.deviceWidth * 0.45,
        margin: EdgeInsets.all(context.deviceWidth * 0.02),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadiusManager.normalBorderRadius,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(
                top:
                    Radius.circular(BorderRadiusManager.normalBorderRadius.bottomRight.x),
              ),
              child: CachedNetworkImage(
                imageUrl: widget.imageUrl,
                height: context.deviceHeight * 0.2,
                width: double.infinity,
                fit: BoxFit.cover,
                placeholder: (context, url) => const Center(
                  child: CircularProgressIndicator(),
                ),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(textPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(
                      fontSize: context.deviceWidth * 0.035,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  SizedBox(height: context.deviceHeight * 0.01),
                  Text(
                    widget.subtitle,
                    style: TextStyle(
                      fontSize: context.deviceWidth * 0.02,
                      color: Theme.of(context).colorScheme.primary.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
