/// [AppConfiguration] is an abstract class that contains
/// the configuration variables of the application.
abstract class AppConfiguration {
  /// [baseUrl] is the base url of the application.
  String get baseUrl;

  /// [postUsersSignupDomain] is the domain for the post users signup.
  String get postUsersSignupDomain;

  /// [postUsersLoginDomain] is the domain for the post users login.
  String get postUsersLoginDomain;

  /// [getUsersProfileDomain] is the domain for the get users profile.
  String get getUsersProfileDomain;

  /// [postUploadProfileImageDomain] is the domain for the post upload profile image.
  String get postUploadProfileImageDomain;

  /// [getMovieFavoritesDomain] is the domain for the get movie favorites.
  String get getMovieFavoritesDomain;

  /// [getMovieFavorites] is get movie favorites.
  String get postMovieFavoritesDomain;

  /// [getMovieList] is the domain for the get movie list.
  String get getMovieListDomain;
}
