import 'package:flutter/material.dart';
import 'package:common/common.dart';
import 'package:nodelabscase/feature/view/mixin/auth/auth_common_view_mixin.dart';
import 'package:nodelabscase/product/utility/extension/list_gutter_extension.dart';
import 'package:nodelabscase/product/utility/extension/padding_extension.dart';

final class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

final class _LoginViewState extends State<LoginView>
    with AuthCommonViewMixin, DeviceSizeMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: PaddingManager.normalPaddingSymmetricHorizontal(context),
        child: Column(
          children: [
            const Text('Merhabalar'),
            const Text('asdasdasdasdasdasdasdasdasdasdadasdadadadaasdads'),
            CustomTextFormField(
              controller: emailController,
              prefixIcon: const Icon(Icons.email_outlined),
              // labelText: LocaleKeys.authentication_email.tr(),
              // hintText: LocaleKeys.authentication_email_placeholder.tr(),
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              // validator: emailValidator,
            ),
            CustomTextFormField(
              controller: passwordController,
              prefixIcon: const Icon(Icons.email_outlined),
              // labelText: LocaleKeys.authentication_email.tr(),
              // hintText: LocaleKeys.authentication_email_placeholder.tr(),
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              // validator: emailValidator,
            ),
          ].seperate(space: deviceHeight * 0.01),
        ),
      )),
    );
  }
}
