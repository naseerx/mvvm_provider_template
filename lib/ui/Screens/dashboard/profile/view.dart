import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => ProfileProvider(),
      builder: (context, child) => _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    final provider = context.read<ProfileProvider>();

    return Scaffold(
      appBar: AppBar(
        title: Text(provider.screen),
      ),
    );
  }
}
