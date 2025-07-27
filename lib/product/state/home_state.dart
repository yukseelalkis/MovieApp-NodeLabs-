import 'package:gen/gen.dart';
import 'package:nodelabscase/product/state/base/base_state.dart';

/// [HomeState] is the state of the login.
final class HomeState extends BaseState {
  /// Constructor
  const HomeState({
    this.movieList,
    this.isExpanded = false,
    super.isLoading,
  });

  @override
  List<Object?> get props => super.props
    ..addAll([
      isLoading,
      isExpanded,
      movieList,
    ]);

  /// [isExpanded] is the expanded state of the home view.
  final bool isExpanded;

  /// [movieList] is the list of movies fetched from the API.
  final MovieList? movieList;

  ///

  @override
  HomeState copyWith({bool? isLoading, bool? isExpanded, MovieList? movieList}) {
    return HomeState(
      isLoading: isLoading ?? this.isLoading,
      isExpanded: isExpanded ?? this.isExpanded,
      movieList: movieList ?? this.movieList,
    );
  }
}
