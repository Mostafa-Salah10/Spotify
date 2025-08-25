import 'package:flutter/material.dart';
import 'package:spotify/core/functions/inialize_app_config.dart';
import 'package:spotify/core/routes/app_router.dart';
import 'package:spotify/core/routes/app_routes.dart';
import 'package:spotify/core/theme/app_theme.dart';

class SpotifyApp extends StatelessWidget {
  const SpotifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //inialize my config of app
    initializeAppConfig(context);
    return MaterialApp(
      //if you add both dark and light mode => the app by defualt will choose the mode of your phone
      theme: AppTheme.lightTheme,
      // darkTheme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: AppRoutes.splash,
    );
  }
}
