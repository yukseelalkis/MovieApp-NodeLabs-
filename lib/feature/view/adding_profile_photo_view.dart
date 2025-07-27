import 'package:common/common.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:nodelabscase/feature/view/widget/auth_label.dart';
import 'package:nodelabscase/product/init/language/locale_keys.g.dart';
import 'package:nodelabscase/product/utility/extension/list_gutter_extension.dart';

part '../part_of_view/part_of_adding_profile_photo_view.dart';

final class AddingProfilePhotoView extends StatefulWidget {
  const AddingProfilePhotoView({super.key});

  @override
  State<AddingProfilePhotoView> createState() => _AddingProfilePhotoViewState();
}

final class _AddingProfilePhotoViewState extends State<AddingProfilePhotoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(LocaleKeys.profile_profile_detail).tr(),
      ),
      body: SafeArea(
        child: Padding(
          padding: PaddingManager.normalPaddingAll(context),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: PaddingManager.normalPadding(context)),
                  child: const AuthLabel(
                    text: LocaleKeys.profile_upload_photo,
                    subtitle: LocaleKeys.profile_lorem_ipsum,
                    textAlign: TextAlign.center,
                  ),
                ),
                PhotoUploadButton(onPressed: () {}),
                const Spacer(flex: 1),
                CustomElevatedButton(
                  onPressed: () {},
                  child: Text(
                    LocaleKeys.common_continue,
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ).tr(),
                ),
              ].seperate(space: context.deviceHeight * 0.05),
            ),
          ),
        ),
      ),
    );
  }
}
