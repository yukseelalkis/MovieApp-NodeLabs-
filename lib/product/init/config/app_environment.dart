import 'package:gen/gen.dart';

/// [AppEnvironment] is manager of environment.
final class AppEnvironment {
  /// [AppEnvironment.setup] sets a spesific environment
  AppEnvironment.setup({required AppConfiguration config}) {
    _config = config;
  }

  /// [AppEnvironment.general] gets as automatically the environment
  AppEnvironment.general() {
    // _config = kDebugMode ? DevEnv() : ProdEnv();
    _config = DevEnv();
  }

  static late final AppConfiguration _config;
}

/// [AppEnvironmentItems] gets the environment variables.
enum AppEnvironmentItems {
  /// [baseUrl] is the base url of the application.
  baseUrl,

  /// [postUsersSignupDomain] is the domain for the post users signup.
  postUsersSignupDomain,

  /// [postUsersLoginDomain] is the domain for the post users login.
  postUsersLoginDomain,

  /// [getMovieFavoritesDomain] is the domain for the get users.
  getMovieFavoritesDomain,

  /// [getMovieListDomain] is the domain for the get users by id.
  getMovieListDomain,

  /// [getSearchByBarcodeDomain] is the domain for the get search by barcode.
  getSearchByBarcodeDomain,

  /// [postUploadProfileImageDomain] is the domain for the post products add.
  postUploadProfileImageDomain,

  /// [postMovieFavoritesDomain] is the domain for the post movie favorites.
  postMovieFavoritesDomain;

  /// Gets the value of the environment item.
  String get value {
    try {
      switch (this) {
        case AppEnvironmentItems.baseUrl:
          return AppEnvironment._config.baseUrl;
        case AppEnvironmentItems.postUsersSignupDomain:
          return AppEnvironment._config.postUsersSignupDomain;
        case AppEnvironmentItems.postUsersLoginDomain:
          return AppEnvironment._config.postUsersLoginDomain;
        case AppEnvironmentItems.getMovieFavoritesDomain:
          return AppEnvironment._config.getMovieFavoritesDomain;
        case AppEnvironmentItems.postMovieFavoritesDomain:
          return AppEnvironment._config.postMovieFavoritesDomain;
        case AppEnvironmentItems.getMovieListDomain:
          return AppEnvironment._config.getMovieListDomain;
        case AppEnvironmentItems.getSearchByBarcodeDomain:
          return AppEnvironment._config.postUploadProfileImageDomain;
        case AppEnvironmentItems.postUploadProfileImageDomain:
          return AppEnvironment._config.postUploadProfileImageDomain;
      }
    } catch (e) {
      throw Exception('Environment variable is not found.');
    }
  }
}
