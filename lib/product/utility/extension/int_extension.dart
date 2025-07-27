import 'package:flutter/material.dart';
import 'package:lawai/product/utility/constants/enums/status_code.dart';

/// [HttpResult] is an enum for HTTP status codes.
extension IntegerExtension on int {
  /// Returns a [HttpResult] based on the status code
  HttpResult get httpResult => HttpResult.fromStatusCode(this);

  /// Returns a [Color] based on the status code
  Color get httpStatusColor {
    switch (httpResult) {
      case HttpResult.success:
        return Colors.green;
      case HttpResult.redirection:
        return Colors.orange;
      case HttpResult.clientError:
      case HttpResult.serverError:
      case HttpResult.conflict:
      case HttpResult.unauthorized:
      case HttpResult.notFound:
        return Colors.red;
      case HttpResult.unknown:
        return Colors.grey;
    }
  }
}
