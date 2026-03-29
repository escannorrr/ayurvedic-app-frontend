import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:vaidyaai/l10n/app_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toastification/toastification.dart';
import 'core/constants/app_constants.dart';
import 'core/theme/app_colors.dart';
import 'core/router/app_router.dart';
import 'core/di/injection_container.dart' as di;
// Auth
import 'features/auth/presentation/bloc/auth_bloc.dart';
import 'features/auth/presentation/bloc/auth_event.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyAppRoot());
}

class MyAppRoot extends StatelessWidget {
  const MyAppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => di.sl<AuthBloc>()..add(const AppStarted()),
        ),
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ToastificationWrapper(
      child: MaterialApp.router(
        title: AppConstants.appName,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: AppColors.primary,
            surface: AppColors.surface,
            primary: AppColors.primary,
            secondary: AppColors.secondary,
            tertiary: AppColors.tertiary,
            error: AppColors.error,
          ),
          scaffoldBackgroundColor: AppColors.surface,
          fontFamily: 'Inter',
          textTheme: const TextTheme(
            displayLarge: TextStyle(fontFamily: 'Manrope', fontWeight: FontWeight.bold),
            displayMedium: TextStyle(fontFamily: 'Manrope', fontWeight: FontWeight.bold),
            displaySmall: TextStyle(fontFamily: 'Manrope', fontWeight: FontWeight.bold),
            headlineLarge: TextStyle(fontFamily: 'Manrope', fontWeight: FontWeight.bold),
            headlineMedium: TextStyle(fontFamily: 'Manrope', fontWeight: FontWeight.bold),
            headlineSmall: TextStyle(fontFamily: 'Manrope', fontWeight: FontWeight.bold),
          ),
        ),
        routerConfig: appRouter,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', ''),
          Locale('hi', ''),
          Locale('mr', ''),
        ],
      ),
    );
  }
}
