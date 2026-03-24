import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:vaidyaai/core/di/injection_container.dart';
import '../../features/auth/presentation/screens/login_screen.dart';
import '../../features/dashboard/presentation/screens/dashboard_screen.dart';
import '../../features/consultation/presentation/screens/consultation_screen.dart';
import '../../features/cases/presentation/screens/saved_cases_screen.dart';
import '../../features/cases/presentation/screens/case_details_screen.dart';
import '../../features/cases/presentation/bloc/case_details_bloc.dart';
import '../../features/cases/presentation/bloc/case_details_event.dart';
import '../../features/settings/presentation/screens/settings_screen.dart';
import '../../features/landing/landing_page.dart';
import '../../features/practitioner_signup/presentation/pages/practitioner_signup_page.dart';
import '../../features/practitioner_signup/presentation/bloc/practitioner_signup_bloc.dart';
import '../layout/app_shell.dart';

class AppRouter {
  AppRouter._();

  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const LandingPage(),
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/practitioner-signup',
        builder: (context, state) => BlocProvider(
          create: (context) => sl<PractitionerSignupBloc>(),
          child: const PractitionerSignupPage(),
        ),
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) => AppShell(navigationShell: navigationShell),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/dashboard',
                pageBuilder: (context, state) => const NoTransitionPage(child: DashboardScreen()),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/consultation',
                pageBuilder: (context, state) => const NoTransitionPage(child: ConsultationScreen()),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/cases',
                pageBuilder: (context, state) => const NoTransitionPage(child: SavedCasesScreen()),
                routes: [
                  GoRoute(
                    path: 'case-details/:id',
                    pageBuilder: (context, state) {
                      final id = state.pathParameters['id']!;
                      return NoTransitionPage(
                        child: BlocProvider(
                          create: (context) => sl<CaseDetailsBloc>()..add(CaseDetailsEvent.loadCaseDetails(id)),
                          child: CaseDetailsScreen(id: id),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/settings',
                pageBuilder: (context, state) => const NoTransitionPage(child: SettingsScreen()),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
