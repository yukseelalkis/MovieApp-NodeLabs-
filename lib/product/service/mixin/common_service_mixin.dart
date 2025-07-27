import 'package:dio/dio.dart';
import 'package:gen/gen.dart';

/// [CommonServiceMixin] is a mixin class that contains common methods
mixin CommonServiceMixin {
  final _domainsToAddToken = [
    DevEnv().postLogoutDomain,
    DevEnv().postProductsAddDomain,
    DevEnv().getUsersDomain,
    DevEnv().getUsersByIdDomain,
    DevEnv().getProductsDomain,
    DevEnv().getProductsByIdDomain,
    DevEnv().deleteProductsByIdDomain,
    DevEnv().putProductsByIdDomain,
    DevEnv().patchProductsByIdDomain,
  ];

  /// [shouldAddToken] method is used to check if the token should be added to the request.
  bool shouldAddToken({
    required RequestOptions options,
  }) =>
      _domainsToAddToken.any(
        (domain) {
          final requestUrl = '${DevEnv().baseUrl}$domain';
          return requestUrl.contains(options.path);
        },
      );
}
