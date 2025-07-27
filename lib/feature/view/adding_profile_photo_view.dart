import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nodelabscase/feature/view/widget/auth_label.dart';
import 'package:nodelabscase/feature/viewmodel/profile_view_model.dart';
import 'package:nodelabscase/product/init/language/locale_keys.g.dart';
import 'package:nodelabscase/product/state/profile_state.dart';
import 'package:nodelabscase/product/utility/extension/list_gutter_extension.dart';

part '../part_of_view/part_of_adding_profile_photo_view.dart';

@RoutePage()
final class AddingProfilePhotoView extends StatefulWidget {
  const AddingProfilePhotoView({super.key, required this.profileViewModel});

  final ProfileViewModel profileViewModel;

  @override
  State<AddingProfilePhotoView> createState() => _AddingProfilePhotoViewState();
}

final class _AddingProfilePhotoViewState extends State<AddingProfilePhotoView> {
  XFile? _pickedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(LocaleKeys.profile_profile_detail).tr(),
      ),
      body: BlocProvider.value(
        value: widget.profileViewModel,
        child: SafeArea(
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
                  PhotoUploadButton(
                    onPressed: () async {
                      final picker = ImagePicker();
                      _pickedImage = await picker.pickImage(
                        source: ImageSource.gallery,
                      );
                      if (_pickedImage != null) {
                        widget.profileViewModel
                            .setProfilePhoto(profilePhoto: File(_pickedImage!.path));
                      }
                    },
                  ),
                  const Spacer(flex: 1),
                  CustomElevatedButton(
                    onPressed: () async {
                      if (_pickedImage != null) {
                        await widget.profileViewModel
                            .updateProfilePhoto(newPhoto: File(_pickedImage!.path));
                      }
                      context.router.popUntilRoot();
                    },
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
      ),
    );
  }
}
