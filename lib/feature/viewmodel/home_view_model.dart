import 'package:gen/gen.dart';
import 'package:logger/logger.dart';
import 'package:nodelabscase/product/service/common_service.dart';
import 'package:nodelabscase/product/state/base/base_cubit.dart';
import 'package:nodelabscase/product/state/home_state.dart';

/// [HomeViewModel] is the view model for the login view.
final class HomeViewModel extends BaseCubit<HomeState> {
  /// Constructor
  HomeViewModel() : super(const HomeState());

  void _changeLoading() {
    emit(state.copyWith(isLoading: !state.isLoading));
  }

  void toggleShowMoreButton() {
    emit(state.copyWith(isExpanded: !state.isExpanded));
  }

  void setShowMoreButton({required bool isExpanded}) {
    emit(state.copyWith(isExpanded: isExpanded));
  }

  void toggleFavorite({bool? isFavorite}) {
    emit(state.copyWith(isFavorite: isFavorite ?? !state.isFavorite));
  }

  Future<void> getMovieList({int page = 1}) async {
    if (state.isLoading) return;
    _changeLoading();
    try {
      var response = await CommonService.instance.getModel<MovieList>(
        domain: DevEnv().getMovieListDomain,
        fromJson: (json) => MovieList.fromJson(json),
        queryParameters: {'page': page},
      );

      if (response.isSuccess) {
        final prevMovies =
            (page == 1) ? <Movie>[] : (state.movieList?.data?.movies ?? []);
        final newMovies = response.data?.data?.movies ?? [];
        final combinedMovies = [...prevMovies, ...newMovies];
        emit(state.copyWith(
          movieList: MovieList(
            data: MovieData(
              movies: combinedMovies,
              pagination: response.data?.data?.pagination,
            ),
          ),
        ));
        Logger().i('Movies fetched successfully: ${response.data}');
      } else {
        Logger().e('Failed to fetch movies: ${response.error}');
      }
    } catch (e) {
      Logger().e(e.toString());
    } finally {
      _changeLoading();
    }
  }

  Future<void> postFavoriteById({required String id}) async {
    _changeLoading();
    try {
      var response = await CommonService.instance.postWithoutModel<FavoriteResponse>(
          domain: '${DevEnv().postMovieFavoritesDomain}/$id',
          fromJson: (json) => FavoriteResponse.fromJson(json));

      if (response.isSuccess) {
        Logger().i('Movie favorited successfully: ${response.data}');
      } else {
        Logger().e('Failed to favorite movie: ${response.error}');
      }
    } catch (e) {
      Logger().e(e.toString());
    } finally {
      _changeLoading();
    }
  }
}
