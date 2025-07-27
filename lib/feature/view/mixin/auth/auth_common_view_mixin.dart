import 'package:common/common.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nodelabscase/product/utility/constants/lawai_regexp.dart';

/// [AuthCommonViewMixin] is a [State] mixin that contains the login view logic.
mixin AuthCommonViewMixin<T extends StatefulWidget> on State<T> {
  /// [_emailController] is the controller for the email text field.
  late final TextEditingController _emailController;

  /// [_passwordController] is the controller for the password text field.
  late final TextEditingController _passwordController;

  /// [emailController] is the controller for the email text field.
  TextEditingController get emailController => _emailController;

  /// [passwordController] is the controller for the password text field.
  TextEditingController get passwordController => _passwordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  // /// [emailValidator] is validator for email field
  // String? emailValidator(String? value) => value.isBlank
  //     ? LocaleKeys.authentication_email_required.tr()
  //     : LawaiRegExp().emailRegexp.hasMatch(value!)
  //         ? null
  //         : LocaleKeys.authentication_valid_email.tr();

  // /// [passwordValidator] is validator for password field
  // String? passwordValidator(String? value) => value.isBlank
  //     ? LocaleKeys.authentication_password_required.tr()
  //     : LawaiRegExp().passwordRegexp.hasMatch(value!)
  //         ? null
  //         : LocaleKeys.authentication_valid_password.tr();
}
