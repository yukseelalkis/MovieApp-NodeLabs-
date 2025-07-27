import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:common/common.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nodelabscase/feature/view/mixin/auth/auth_common_view_mixin.dart';
import 'package:nodelabscase/feature/view/mixin/auth/login_view_mixin.dart';
import 'package:nodelabscase/feature/view/mixin/common_view_mixin.dart';
import 'package:nodelabscase/feature/view/widget/auth_label.dart';
import 'package:nodelabscase/product/init/language/locale_keys.g.dart';
import 'package:nodelabscase/product/utility/extension/list_gutter_extension.dart';

final class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

final class _LoginViewState extends State<LoginView>
    with AuthCommonViewMixin, LoginViewMixin, DeviceSizeMixin, CommonViewMixin {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => gestureOnTap(context),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Padding(
            padding: PaddingManager.normalPaddingSymmetricHorizontal(context),
            child: Form(
              key: loginFormKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Spacer(flex: 1),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          LocaleKeys.auth_hello,
                          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                        ).tr(),
                        Text(
                          LocaleKeys.auth_subtitle,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,
                        ).tr(),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        CustomTextFormField(
                          controller: emailController,
                          prefixIcon: const Icon(Icons.email_outlined),
                          labelText: LocaleKeys.auth_email.tr(),
                          hintText: LocaleKeys.auth_email_placeholder.tr(),
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          validator: emailValidator,
                        ),
                        CustomTextFormField(
                          controller: passwordController,
                          prefixIcon: const Icon(Icons.email_outlined),
                          labelText: LocaleKeys.auth_password.tr(),
                          hintText: LocaleKeys.auth_password_placeholder.tr(),
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          suffixIcon: IconButton(
                            icon: const Icon(Icons.visibility_off_outlined),
                            onPressed: () {},
                          ),
                          obscureText: true,
                          validator: passwordValidator,
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        LocaleKeys.auth_forgot_password.tr(),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomElevatedButton(
                          onPressed: () => isFormValid(loginFormKey),
                          child: Text(
                            LocaleKeys.auth_login.tr(),
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SocialconButton(
                                iconData: FontAwesomeIcons.apple,
                                deviceWidth: deviceWidth,
                                deviceHeight: deviceHeight),
                            SocialconButton(
                                iconData: FontAwesomeIcons.facebook,
                                deviceWidth: deviceWidth,
                                deviceHeight: deviceHeight),
                            SocialconButton(
                                iconData: FontAwesomeIcons.google,
                                deviceWidth: deviceWidth,
                                deviceHeight: deviceHeight)
                          ].seperate(space: deviceWidth * 0.02),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(LocaleKeys.auth_do_not_have_an_account).tr(),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                LocaleKeys.auth_register.tr(),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
