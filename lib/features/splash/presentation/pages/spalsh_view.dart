import 'package:flutter/material.dart';
import 'package:spotify_clone/core/extensions/custom_navigator_extension.dart';
import 'package:spotify_clone/core/routes/app_routes.dart';
import 'package:spotify_clone/core/widgets/custom_app_widget.dart';

class SpalshView extends StatefulWidget {
  const SpalshView({super.key});

  @override
  State<SpalshView> createState() => _SpalshViewState();
}

class _SpalshViewState extends State<SpalshView> {
  @override
  void initState() {
    //for waiting the screen to load
    _handleWaitingScreen();
    super.initState();
  }

  Future<void> _handleWaitingScreen() {
    return Future.delayed(const Duration(seconds: 3), () {
      // ignore: use_build_context_synchronously
      context.pushReplacementScreen(AppRoutes.onboardingOne);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(height: double.infinity, child: CustomAppWidget()),
    );
  }
}
