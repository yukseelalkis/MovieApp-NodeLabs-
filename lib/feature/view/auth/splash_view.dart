git adimport 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:gen/gen.dart';
import 'package:nodelabscase/product/navigation/app_router.dart';

@RoutePage()

/// [SplashView] is a [StatefulWidget] that displays
final class SplashView extends StatefulWidget {
  /// Constructor
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with DeviceSizeMixin {
  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();

    Future.delayed(
      const Duration(seconds: 2),
      () {
        if (mounted) {
          context.router.replace(const AuthWrapperRoute());
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: Assets.images.sinFlixSplash.image(
          package: 'gen',
          width: deviceWidth,
          height: deviceHeight,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
