import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()

/// [ProfileView] is a class that contains the home view.
final class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

final class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Profile View'),
      ),
    );
  }
}
