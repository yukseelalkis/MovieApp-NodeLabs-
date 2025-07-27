import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:nodelabscase/feature/view/auth/login_view.dart';
import 'package:nodelabscase/feature/view/auth/sign_up_view.dart';
import 'package:nodelabscase/product/init/language/product_localization.dart';
import 'package:nodelabscase/product/init/theme/decided_the_theme.dart';
import 'package:nodelabscase/product/utility/constants/enums/nodelabscase.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(ProductLocalization(child: const NodeLabsCase()));
}

final class NodeLabsCase extends StatelessWidget {
  const NodeLabsCase({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: NodeLabs.nodelabscase.name,
      home: const SignUpView(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: DecidedTheTheme.themeConfiguration(context),
      debugShowCheckedModeBanner: false,
    );
  }
}
