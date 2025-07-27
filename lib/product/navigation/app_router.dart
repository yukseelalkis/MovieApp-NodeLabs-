import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:lawai/feature/view/auth/auth_wrapper_view.dart';
import 'package:lawai/feature/view/common/common_wrapper_view.dart';
import 'package:lawai/feature/view/dashboard/account_view.dart';
import 'package:lawai/feature/view/dashboard/chat_view.dart';
import 'package:lawai/feature/view/auth/verify_otp_view.dart';
import 'package:lawai/feature/view/auth/reset_password_view.dart';
import 'package:lawai/feature/view/auth/forgot_password_view.dart';
import 'package:lawai/feature/view/auth/login_view.dart';
import 'package:lawai/feature/view/auth/sign_up_view.dart';
import 'package:lawai/feature/view/dashboard/dashboard_wrapper_view.dart';
import 'package:lawai/product/utility/constants/enums/after_otp_verify.dart';
import 'package:lawai/feature/view/auth/splash_view.dart';
import 'package:gen/gen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')

/// [AppRouter] is the root router for the application.
final class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(
          page: AuthWrapperRoute.page,
          children: [
            AutoRoute(page: LoginRoute.page, initial: true),
            AutoRoute(page: SignUpRoute.page),
          ],
        ),
        AutoRoute(
          page: DashboardWrapperRoute.page,
          children: [
            AutoRoute(page: ChatRoute.page, initial: true),
            AutoRoute(page: AccountRoute.page),
          ],
        ),
        AutoRoute(
          page: CommonWrapperRoute.page,
          children: [
            AutoRoute(page: ForgotPasswordRoute.page, initial: true),
            AutoRoute(page: VerifyOTPRoute.page),
            AutoRoute(page: ResetPasswordRoute.page),
          ],
        ),
      ];
}
