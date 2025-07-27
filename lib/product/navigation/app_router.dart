import 'package:auto_route/auto_route.dart';
import 'package:nodelabscase/feature/view/adding_profile_photo_view.dart';
import 'package:nodelabscase/feature/view/auth/auth_wrapper_view.dart';
import 'package:nodelabscase/feature/view/auth/login_view.dart';
import 'package:nodelabscase/feature/view/auth/sign_up_view.dart';
import 'package:nodelabscase/feature/view/auth/splash_view.dart';
import 'package:nodelabscase/feature/view/dashboard_wrapper_view.dart';
import 'package:nodelabscase/feature/view/home_view.dart';
import 'package:nodelabscase/feature/view/profile_view.dart';
import 'package:nodelabscase/feature/view/profile_wrapper_view.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')

/// [AppRouter] is the root router for the application.
final class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          initial: true,
        ),
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
            AutoRoute(page: HomeRoute.page, initial: true),
            AutoRoute(
              page: ProfileWrapperRoute.page,
              children: [
                AutoRoute(page: ProfileRoute.page, initial: true),
                AutoRoute(page: AddingProfilePhotoRoute.page),
              ],
            ),
          ],
        ),
      ];
}
