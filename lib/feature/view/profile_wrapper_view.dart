import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

/// [ProfileWrapperView] is a class that contains the profile wrapper view.
@RoutePage()
final class ProfileWrapperView extends StatefulWidget {
  /// Constructor
  const ProfileWrapperView({super.key});

  @override
  State<ProfileWrapperView> createState() => _ProfileWrapperViewState();
}

class _ProfileWrapperViewState extends State<ProfileWrapperView> {
  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
