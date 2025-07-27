// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [AddingProfilePhotoView]
class AddingProfilePhotoRoute
    extends PageRouteInfo<AddingProfilePhotoRouteArgs> {
  AddingProfilePhotoRoute({
    Key? key,
    required ProfileViewModel profileViewModel,
    List<PageRouteInfo>? children,
  }) : super(
          AddingProfilePhotoRoute.name,
          args: AddingProfilePhotoRouteArgs(
            key: key,
            profileViewModel: profileViewModel,
          ),
          initialChildren: children,
        );

  static const String name = 'AddingProfilePhotoRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AddingProfilePhotoRouteArgs>();
      return AddingProfilePhotoView(
        key: args.key,
        profileViewModel: args.profileViewModel,
      );
    },
  );
}

class AddingProfilePhotoRouteArgs {
  const AddingProfilePhotoRouteArgs({
    this.key,
    required this.profileViewModel,
  });

  final Key? key;

  final ProfileViewModel profileViewModel;

  @override
  String toString() {
    return 'AddingProfilePhotoRouteArgs{key: $key, profileViewModel: $profileViewModel}';
  }
}

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
/// [DashboardWrapperView]
class DashboardWrapperRoute extends PageRouteInfo<void> {
  const DashboardWrapperRoute({List<PageRouteInfo>? children})
      : super(
          DashboardWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardWrapperRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DashboardWrapperView();
    },
  );
}

/// generated route for
/// [HomeView]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeView();
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
/// [ProfileView]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProfileView();
    },
  );
}

/// generated route for
/// [ProfileWrapperView]
class ProfileWrapperRoute extends PageRouteInfo<void> {
  const ProfileWrapperRoute({List<PageRouteInfo>? children})
      : super(
          ProfileWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileWrapperRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProfileWrapperView();
    },
  );
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
