
import 'package:flutter/foundation.dart';
import 'package:gen/gen.dart';

/// [AppEnvironment] is manager of environment.
final class AppEnvironment {
  /// [AppEnvironment.setup] sets a spesific environment
  AppEnvironment.setup({required AppConfiguration config}) {
    _config = config;
  }
  
  /// [AppEnvironment.general] gets as automatically the environment
  AppEnvironment.general() {
    _config = kDebugMode ? DevEnv() : ProdEnv();
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

  /// [getUsersDomain] is the domain for the get users.
  getUsersDomain,

  /// [getUsersByIdDomain] is the domain for the get users by id.
  getUsersByIdDomain,

  /// [getSearchByBarcodeDomain] is the domain for the get search by barcode.
  getSearchByBarcodeDomain,

  /// [postProductsAddDomain] is the domain for the post products add.
  postProductsAddDomain,

  /// [getProductsDomain] is the domain for the get products.
  getProductsDomain,

  /// [getProductsByIdDomain] is the domain for the get products by id.
  getProductsByIdDomain,

  /// [deleteProductsByIdDomain] is the domain for the delete products by id.
  deleteProductsByIdDomain,

  /// [putProductsByIdDomain] is the domain for the put products by id.
  putProductsByIdDomain,

  /// [patchProductsByIdDomain] is the domain for the patch products by id.
  patchProductsByIdDomain,

  /// [postLogoutDomain] is the domain for the post logout.
  postLogoutDomain,

  /// [postRequestResetPasswordDomain] is the domain for the post request reset password.
  postRequestResetPasswordDomain,

  /// [postResetPasswordDomain] is the domain for the post reset password.
  postResetPasswordDomain,

  /// [postVerifyEmailDomain] is the domain for the post verify email.
  postVerifyEmailDomain,

  /// [postSendVerificationCodeToEmailDomain] is the domain for the post send verification code to email.
  postSendVerificationCodeToEmailDomain,

  /// [postChangePasswordDomain] is the domain for the post change password.
  postChangePasswordDomain;

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
        case AppEnvironmentItems.getUsersDomain:
          return AppEnvironment._config.getUsersDomain;
        case AppEnvironmentItems.getUsersByIdDomain:
          return AppEnvironment._config.getUsersByIdDomain;
        case AppEnvironmentItems.getSearchByBarcodeDomain:
          return AppEnvironment._config.getSearchByBarcodeDomain;
        case AppEnvironmentItems.postProductsAddDomain:
          return AppEnvironment._config.postProductsAddDomain;
        case AppEnvironmentItems.getProductsDomain:
          return AppEnvironment._config.getProductsDomain;
        case AppEnvironmentItems.getProductsByIdDomain:
          return AppEnvironment._config.getProductsByIdDomain;
        case AppEnvironmentItems.deleteProductsByIdDomain:
          return AppEnvironment._config.deleteProductsByIdDomain;
        case AppEnvironmentItems.putProductsByIdDomain:
          return AppEnvironment._config.putProductsByIdDomain;
        case AppEnvironmentItems.patchProductsByIdDomain:
          return AppEnvironment._config.patchProductsByIdDomain;
        case AppEnvironmentItems.postLogoutDomain:
          return AppEnvironment._config.postLogoutDomain;
        case AppEnvironmentItems.postRequestResetPasswordDomain:
          return AppEnvironment._config.postRequestResetPasswordDomain;
        case AppEnvironmentItems.postResetPasswordDomain:
          return AppEnvironment._config.postResetPasswordDomain;
        case AppEnvironmentItems.postVerifyEmailDomain:
          return AppEnvironment._config.postVerifyEmailDomain;
        case AppEnvironmentItems.postSendVerificationCodeToEmailDomain:
          return AppEnvironment._config.postSendVerificationCodeToEmailDomain;
        case AppEnvironmentItems.postChangePasswordDomain:
          return AppEnvironment._config.postChangePasswordDomain;
      }
    } catch (e) {
      throw Exception('Environment variable is not found.');
    }
  }
}
