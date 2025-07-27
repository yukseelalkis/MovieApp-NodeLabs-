import 'package:flutter/material.dart';
import 'package:nodelabscase/feature/view/auth/login_view.dart';

void main() => runApp(const NodeLabsCase());

final class NodeLabsCase extends StatelessWidget {
  const NodeLabsCase({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Material App', home: LoginView());
  }
}
