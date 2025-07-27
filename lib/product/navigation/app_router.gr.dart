// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [AuthWrapperView]
class AuthWrapperRoute extends PageRouteInfo<void> {
  const AuthWrapperRoute({List<PageRouteInfo>? children})
      : super(
          AuthWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthWrapperRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AuthWrapperView();
    },
  );
}

/// generated route for
/// [ForgotPasswordView]
class ForgotPasswordRoute extends PageRouteInfo<void> {
  const ForgotPasswordRoute({List<PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ForgotPasswordView();
    },
  );
}

/// generated route for
/// [LoginView]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LoginView();
    },
  );
}

/// generated route for
/// [ResetPasswordView]
class ResetPasswordRoute extends PageRouteInfo<ResetPasswordRouteArgs> {
  ResetPasswordRoute({
    required bool islogin,
    required VerifyOTP verifyOTP,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ResetPasswordRoute.name,
          args: ResetPasswordRouteArgs(
            islogin: islogin,
            verifyOTP: verifyOTP,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ResetPasswordRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ResetPasswordRouteArgs>();
      return ResetPasswordView(
        islogin: args.islogin,
        verifyOTP: args.verifyOTP,
        key: args.key,
      );
    },
  );
}

class ResetPasswordRouteArgs {
  const ResetPasswordRouteArgs({
    required this.islogin,
    required this.verifyOTP,
    this.key,
  });

  final bool islogin;

  final VerifyOTP verifyOTP;

  final Key? key;

  @override
  String toString() {
    return 'ResetPasswordRouteArgs{islogin: $islogin, verifyOTP: $verifyOTP, key: $key}';
  }
}

/// generated route for
/// [SignUpView]
class SignUpRoute extends PageRouteInfo<void> {
  const SignUpRoute({List<PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SignUpView();
    },
  );
}

/// generated route for
/// [SplashView]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SplashView();
    },
  );
}

/// generated route for
/// [VerifyOTPView]
class VerifyOTPRoute extends PageRouteInfo<VerifyOTPRouteArgs> {
  VerifyOTPRoute({
    required String email,
    required AfterOtpVerify afterOtpVerify,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          VerifyOTPRoute.name,
          args: VerifyOTPRouteArgs(
            email: email,
            afterOtpVerify: afterOtpVerify,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'VerifyOTPRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<VerifyOTPRouteArgs>();
      return VerifyOTPView(
        email: args.email,
        afterOtpVerify: args.afterOtpVerify,
        key: args.key,
      );
    },
  );
}

class VerifyOTPRouteArgs {
  const VerifyOTPRouteArgs({
    required this.email,
    required this.afterOtpVerify,
    this.key,
  });

  final String email;

  final AfterOtpVerify afterOtpVerify;

  final Key? key;

  @override
  String toString() {
    return 'VerifyOTPRouteArgs{email: $email, afterOtpVerify: $afterOtpVerify, key: $key}';
  }
}
