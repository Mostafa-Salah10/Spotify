import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_clone/core/functions/inialize_app_config.dart';
import 'package:spotify_clone/core/config/routes/app_router.dart';
import 'package:spotify_clone/core/config/routes/app_routes.dart';
import 'package:spotify_clone/core/config/theme/app_theme.dart';
import 'package:spotify_clone/features/auth/presentation/manager/cubit/auth_cubit.dart';
import 'package:spotify_clone/features/onboarding/presentation/manager/theme_manager.dart';

class SpotifyApp extends StatelessWidget {
  const SpotifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //inialize my config of app
    initializeAppConfig(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ThemeManager()),
        BlocProvider(create: (_) => AuthCubit()),
      ],
      child: BlocBuilder<ThemeManager, ThemeMode>(
        builder: (context, theme) {
          return MaterialApp(
            //if you add both dark and light mode => the app by defualt will choose the mode of your phone
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: theme,
            debugShowCheckedModeBanner: false,
            onGenerateRoute: AppRouter.onGenerateRoute,
            initialRoute: AppRoutes.splash,
          );
        },
      ),
    );
  }
}
