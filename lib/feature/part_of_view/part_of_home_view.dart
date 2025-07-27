part of '../view/home_view.dart';

/// TODO: This class will fall apart
final class _LargeMovieCard extends StatefulWidget {
  const _LargeMovieCard({
    required this.movieTitle,
    required this.movieDescription,
    required this.movieImageUrl,
    required this.avatarImageUrl,
    required this.homeViewModel,
    required this.isExpanded,
    required this.isFavorite,
    required this.id,
  });

  final String movieTitle;
  final String movieDescription;
  final String movieImageUrl;
  final String avatarImageUrl;
  final String id;
  final HomeViewModel homeViewModel;
  final bool isExpanded;
  final bool isFavorite;

  @override
  State<_LargeMovieCard> createState() => __LargeMovieCardState();
}

class __LargeMovieCardState extends State<_LargeMovieCard> {
  final double _avatarRadius = 30;
  final double _movieTitleFontSize = 22;
  final double _movieDescriptionFontSize = 12;
  final double _showMoreButtonButtonSize = 14;
  final int _movieDescriptionMaxLines = 2;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(26),
      child: SizedBox(
        height: context.deviceHeight * 0.81,
        child: Stack(
          children: [
            Positioned.fill(
              child: CachedNetworkImage(
                imageUrl: widget.movieImageUrl.replaceFirst('http://', 'https://'),
                fit: BoxFit.cover,
                errorWidget: (context, url, error) => const Icon(Icons.broken_image),
              ),
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.transparent, Colors.black.withOpacity(0.93)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
            _FavoriteButton(
              isFavorite: widget.isFavorite,
              id: widget.id,
              homeViewModel: widget.homeViewModel,
            ),
            Positioned(
              left: context.deviceWidth * 0.05,
              bottom: context.deviceHeight * 0.03,
              right: context.deviceWidth * 0.05,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: _avatarRadius,
                    backgroundImage: CachedNetworkImageProvider(
                        widget.avatarImageUrl.replaceFirst('http://', 'https://')),
                  ),
                  SizedBox(width: context.deviceWidth * 0.03),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.movieTitle,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.bold,
                            fontSize: _movieTitleFontSize,
                          ),
                        ),
                        SizedBox(height: context.deviceHeight * 0.01),
                        AnimatedSize(
                          duration:
                              Duration(milliseconds: DurationMiliSeconds.short.value),
                          curve: Curves.easeInOut,
                          child: ConstrainedBox(
                            constraints: widget.isExpanded
                                ? const BoxConstraints()
                                : BoxConstraints(maxHeight: context.deviceHeight * 0.05),
                            child: Text(
                              widget.movieDescription,
                              style: TextStyle(
                                color: Theme.of(context)
                                    .colorScheme
                                    .primary
                                    .withOpacity(0.8),
                                fontSize: _movieDescriptionFontSize,
                              ),
                              softWrap: true,
                              overflow: TextOverflow.fade,
                            ),
                          ),
                        ),
                        Builder(
                          builder: (context) {
                            final span = TextSpan(
                              text: widget.movieDescription,
                              style: TextStyle(fontSize: _movieDescriptionFontSize),
                            );
                            final tp = TextPainter(
                                text: span,
                                maxLines: _movieDescriptionMaxLines,
                                textDirection: ui.TextDirection.ltr);
                            tp.layout(
                              maxWidth: context.deviceWidth * 0.7,
                            );
                            if (!tp.didExceedMaxLines && !widget.isExpanded) {
                              return const SizedBox.shrink();
                            }
                            return GestureDetector(
                              onTap: () => widget.homeViewModel.toggleShowMoreButton(),
                              child: Padding(
                                padding:
                                    EdgeInsets.only(top: context.deviceHeight * 0.01),
                                child: Text(
                                  widget.isExpanded
                                      ? LocaleKeys.common_show_less
                                      : LocaleKeys.common_show_more,
                                  style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: _showMoreButtonButtonSize,
                                    decoration: TextDecoration.underline,
                                  ),
                                ).tr(),
                              ),
                            );
                          },
                        ),
                      ],
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

final class _FavoriteButton extends StatefulWidget {
  const _FavoriteButton({
    required this.isFavorite,
    required this.id,
    required this.homeViewModel,
  });

  final bool isFavorite;
  final String id;
  final HomeViewModel homeViewModel;

  @override
  State<_FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<_FavoriteButton> {
  @override
  void initState() {
    widget.homeViewModel.toggleFavorite(isFavorite: widget.isFavorite);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: context.deviceHeight * 0.1,
      right: context.deviceWidth * 0.05,
      child: ClipRRect(
        borderRadius: BorderRadiusManager.moreBorderRadius,
        child: Container(
          width: context.deviceWidth * 0.12,
          height: context.deviceWidth * 0.18,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.2),
            borderRadius: BorderRadiusManager.moreBorderRadius,
            border: Border.all(
              color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
              width: context.deviceWidth * 0.005,
            ),
          ),
          child: BlocSelector<HomeViewModel, HomeState, bool>(
            selector: (state) {
              return state.isFavorite;
            },
            builder: (context, state) {
              return IconButton(
                onPressed: () async {
                  await widget.homeViewModel.postFavoriteById(id: widget.id);
                  widget.homeViewModel.toggleFavorite();
                },
                icon: Icon(
                  Icons.favorite,
                  color: state
                      ? Theme.of(context).colorScheme.tertiary
                      : Theme.of(context).colorScheme.primary,
                  size: context.deviceWidth * 0.06,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

/// [_DiscoverList] is a widget that displays the list of movies.
/// It uses a [ListView.builder] to create a scrollable list of movie cards.
final class _DiscoverList extends StatelessWidget {
  const _DiscoverList({
    required this.scrollController,
    required this.movies,
    required this.currentPage,
    required this.maxPage,
    required this.isLoading,
    required this.homeViewModel,
    required this.state,
  });

  final ScrollController scrollController;
  final List<Movie> movies;
  final int currentPage;
  final int maxPage;
  final bool isLoading;
  final HomeViewModel homeViewModel;
  final HomeState state;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const AlwaysScrollableScrollPhysics(),
      controller: scrollController,
      itemCount: movies.length + ((currentPage < maxPage || isLoading) ? 1 : 0),
      itemBuilder: (context, index) {
        if (index == movies.length) {
          return Padding(
            padding: PaddingManager.normalPaddingSymmetricVertical(context),
            child: const Center(child: CircularProgressIndicator()),
          );
        }
        final movie = movies[index];
        return _LargeMovieCard(
          movieTitle: movie.Title ?? '',
          movieDescription: movie.Plot ?? '',
          movieImageUrl: movie.Poster ?? '',
          avatarImageUrl: movie.Poster ?? '',
          homeViewModel: homeViewModel,
          isExpanded: state.isExpanded,
          isFavorite: movie.isFavorite ?? false,
          id: movie.id ?? '',
        );
      },
    );
  }
}
