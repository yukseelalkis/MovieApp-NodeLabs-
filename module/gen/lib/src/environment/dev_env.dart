import 'package:envied/envied.dart';
import 'package:gen/src/environment/app_configuration.dart';

part 'dev_env.g.dart';

@Envied(
  obfuscate: true,
  path: 'assets/env/.dev.env',
)

/// [DevEnv] is a class that is used to get the environment variables.
final class DevEnv implements AppConfiguration {
  @EnviedField(varName: 'BASE_URL')
  static final String _baseUrl = _DevEnv._baseUrl;

  @EnviedField(varName: 'POST_USERS_SIGNUP_DOMAIN')
  static final String _postUsersSignupDomain = _DevEnv._postUsersSignupDomain;

  @EnviedField(varName: 'POST_USERS_LOGIN_DOMAIN')
  static final String _postUsersLoginDomain = _DevEnv._postUsersLoginDomain;

  @EnviedField(varName: 'POST_USERS_UPLOAD_PHOTO_DOMAIN')
  static final String _postUploadProfileImageDomain =
      _DevEnv._postUploadProfileImageDomain;

  @EnviedField(varName: 'POST_MOVIE_FAVORITES_DOMAIN')
  static final String _postMovieFavoritesDomain = _DevEnv._postMovieFavoritesDomain;

  @EnviedField(varName: 'GET_MOVIE_LIST_DOMAIN')
  static final String _getMovieListDomain = _DevEnv._getMovieListDomain;

  @EnviedField(varName: 'GET_MOVIE_FAVORITES_DOMAIN')
  static final String _getMovieFavoritesDomain = _DevEnv._getMovieFavoritesDomain;

  @EnviedField(varName: 'POST_USERS_PROFILE_DOMAIN')
  static final String _getUsersProfileDomain = _DevEnv._getUsersProfileDomain;

  @override
  String get baseUrl => _baseUrl;

  @override
  String get postUsersSignupDomain => _postUsersSignupDomain;

  @override
  String get postUsersLoginDomain => _postUsersLoginDomain;

  @override
  String get postUploadProfileImageDomain => _postUploadProfileImageDomain;

  @override
  String get getUsersProfileDomain => _getUsersProfileDomain;

  @override
  String get postMovieFavoritesDomain => _postMovieFavoritesDomain;

  @override
  String get getMovieListDomain => _getMovieListDomain;

  @override
  String get getMovieFavoritesDomain => _getMovieFavoritesDomain;
}
