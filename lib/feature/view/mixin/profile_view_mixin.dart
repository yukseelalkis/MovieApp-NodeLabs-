import 'package:flutter/material.dart';
import 'package:nodelabscase/feature/view/home_view.dart';
import 'package:nodelabscase/feature/view/profile_view.dart';
import 'package:nodelabscase/feature/viewmodel/home_view_model.dart';
import 'package:nodelabscase/feature/viewmodel/profile_view_model.dart';

/// [ProfileViewMixin] is a [State] mixin that contains the profile view logic.
mixin ProfileViewMixin on State<ProfileView> {
  /// [profileViewModel] is the view model for the profile view.
  late final ProfileViewModel _profileViewModel;

  /// [_scrollController] is the scroll controller for the profile view.
  late final ScrollController _scrollController;

  /// [profileViewModel] is the view model for the profile view.
  ProfileViewModel get profileViewModel => _profileViewModel;

  /// [scrollController] is the scroll controller for the profile view.
  ScrollController get scrollController => _scrollController;

  @override
  void initState() {
    super.initState();
    _profileViewModel = ProfileViewModel();
    _scrollController = ScrollController();
    profileViewModel.getProfile();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (!_scrollController.hasClients) return;
  }
}
