import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:common/common.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nodelabscase/feature/view/mixin/profile_view_mixin.dart';
import 'package:nodelabscase/feature/viewmodel/profile_view_model.dart';
import 'package:nodelabscase/product/init/language/locale_keys.g.dart';
import 'package:nodelabscase/product/navigation/app_router.dart';
import 'package:nodelabscase/product/state/profile_state.dart';

part '../part_of_view/part_of_profile_view.dart';

@RoutePage()

/// [ProfileView] is a class that contains the home view.
final class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

final class _ProfileViewState extends State<ProfileView> with ProfileViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _ProfileAppBar(),
      body: BlocProvider.value(
        value: profileViewModel,
        child: SafeArea(
            child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: PaddingManager.normalPadding(context)),
          child: Column(
            children: [
              _ProfileListTile(profileViewModel: profileViewModel),
            ],
          ),
        )),
      ),
    );
  }
}
