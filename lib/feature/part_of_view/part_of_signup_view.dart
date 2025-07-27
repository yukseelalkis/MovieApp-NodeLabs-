part of '../view/auth/sign_up_view.dart';

/// [UserAgreementText] is a widget that displays the user agreement text
final class _UserAgreementText extends StatelessWidget {
  const _UserAgreementText();

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.start,
      text: TextSpan(
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Colors.white70,
              fontSize: 12,
            ),
        children: [
          TextSpan(text: LocaleKeys.auth_agreement_text.tr()),
          TextSpan(
            text: LocaleKeys.auth_i_have_read_and_agree.tr(),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              color: Colors.white,
            ),
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
          TextSpan(text: LocaleKeys.auth_please_read_and_agree.tr()),
        ],
      ),
    );
  }
}
