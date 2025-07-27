import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:nodelabscase/feature/view/auth/sign_up_view.dart';
import 'package:nodelabscase/product/init/language/locale_keys.g.dart';
import 'package:common/common.dart';

/// [SignUpViewMixin] is a [State] mixin that contains the login view logic.
mixin SignUpViewMixin on State<SignUpView> {
  /// [_signupFormKey] is the key for the login form.
  late final GlobalKey<FormState> _signupFormKey;

  /// [_fullnamenameController] is the controller for the email text field.
  late final TextEditingController _fullnamenameController;

  /// [_confirmPasswordController] is the controller for the password text field.
  late final TextEditingController _confirmPasswordController;

  /// [signupFormKey] is the key for the login form.
  GlobalKey<FormState> get signupFormKey => _signupFormKey;

  /// [fullnameController] is the controller for the fullname text field.
  TextEditingController get fullnameController => _fullnamenameController;

  /// [confirmPasswordController] is the controller for the password text field.
  TextEditingController get confirmPasswordController => _confirmPasswordController;

  @override
  void initState() {
    super.initState();
    _signupFormKey = GlobalKey<FormState>();
    _fullnamenameController = TextEditingController();
    _confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    _fullnamenameController.dispose();
    _confirmPasswordController.dispose();
    _signupFormKey.currentState?.dispose();
    super.dispose();
  }

  /// [fullnameValidator] is validator for fullname field
  String? fullnameValidator(String? value) =>
      !value.isBlank ? null : LocaleKeys.auth_fullname_required.tr();

  /// [confirmPasswordValidator] is validator for confirm password field
  String? confirmPasswordValidator(String? value, String password) => value.isBlank
      ? LocaleKeys.auth_password_required.tr()
      : value == password
          ? null
          : LocaleKeys.auth_the_passwords_do_not_match.tr();
}
