import 'dart:io';

import 'package:gen/gen.dart';
import 'package:nodelabscase/product/state/base/base_state.dart';

/// [ProfileState] is the state of the login.
final class ProfileState extends BaseState {
  /// Constructor
  const ProfileState({
    this.profile,
    this.profilePhoto,
    super.isLoading,
    this.favoriteMovies,
  });

  @override
  List<Object?> get props => super.props
    ..addAll([
      isLoading,
      profile,
      profilePhoto,
      favoriteMovies,
    ]);

  final ProfileData? profile;
  final File? profilePhoto;
  final List<Movie>? favoriteMovies;

  @override
  ProfileState copyWith(
      {bool? isLoading,
      ProfileData? profile,
      File? profilePhoto,
      List<Movie>? favoriteMovies}) {
    return ProfileState(
      profile: profile ?? this.profile,
      profilePhoto: profilePhoto ?? this.profilePhoto,
      isLoading: isLoading ?? this.isLoading,
      favoriteMovies: favoriteMovies ?? this.favoriteMovies,
    );
  }
}
