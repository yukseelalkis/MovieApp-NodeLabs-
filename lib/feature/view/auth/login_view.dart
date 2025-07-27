import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:common/common.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nodelabscase/feature/view/mixin/auth/auth_common_view_mixin.dart';
import 'package:nodelabscase/feature/view/mixin/auth/login_view_mixin.dart';
import 'package:nodelabscase/product/init/language/locale_keys.g.dart';
import 'package:nodelabscase/product/utility/extension/list_gutter_extension.dart';

final class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

final class _LoginViewState extends State<LoginView>
    with AuthCommonViewMixin, LoginViewMixin, DeviceSizeMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: PaddingManager.normalPaddingSymmetricHorizontal(context),
          child: Form(
            key: loginFormKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      const Text(LocaleKeys.auth_hello).tr(),
                      const Text(LocaleKeys.auth_subtitle).tr(),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
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
                        validator: passwordValidator,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            LocaleKeys.auth_forgot_password.tr(),
                          ),
                        ),
                      ),
                      CustomElevatedButton(
                        onPressed: () {},
                        child: Text(LocaleKeys.auth_login.tr()),
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
    );
  }
}
