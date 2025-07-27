import 'dart:async';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:logger/logger.dart';
import 'package:nodelabscase/product/init/cache/cache_manager.dart';
import 'package:nodelabscase/product/init/config/app_environment.dart';

/// [ApplicationInitialize] is a class that initializes the application.
@immutable
final class ApplicationInitialize {
  /// Ensures Flutter is initialized and runs `_initialize`, logging any errors.
  Future<void> make() async {
    FlutterNativeSplash.preserve(
      widgetsBinding: WidgetsFlutterBinding.ensureInitialized(),
    );
    await runZonedGuarded<Future<void>>(_initialize, (error, stack) {
      Logger().e('Error: $error');
    });
  }

  /// [_initialize] is a method that initializes the application.
  Future<void> _initialize() async {
    /// Initialize Easy Localization
    await EasyLocalization.ensureInitialized();
    EasyLocalization.logger.enableLevels = [LevelMessages.error];
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    FlutterError.onError = (details) {
      Logger().e('Flutter Error: ${details.exception}');
    };

    AppEnvironment.general();
    await CacheManager.instance.init();
  }
}
