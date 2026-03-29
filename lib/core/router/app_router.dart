import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vaidyaai/features/landing/landing_page.dart';
import 'package:vaidyaai/features/auth/presentation/screens/login_screen.dart';
import 'package:vaidyaai/features/dashboard/presentation/screens/dashboard_screen.dart';
import 'package:vaidyaai/features/cases/presentation/screens/saved_cases_screen.dart';
import 'package:vaidyaai/features/consultation/presentation/screens/consultation_screen.dart';
import 'package:vaidyaai/features/settings/presentation/screens/settings_screen.dart';
import 'package:vaidyaai/features/practitioner_signup/presentation/pages/practitioner_signup_page.dart';
import 'package:vaidyaai/features/practitioner_signup/presentation/bloc/practitioner_signup_bloc.dart';
import 'package:vaidyaai/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:vaidyaai/features/auth/presentation/bloc/auth_state.dart';
import 'package:vaidyaai/features/cases/presentation/screens/case_details_screen.dart';
import 'package:vaidyaai/features/cases/presentation/bloc/case_details_bloc.dart';
import 'package:vaidyaai/features/cases/presentation/bloc/case_details_event.dart';
import '../layout/app_shell.dart';
import 'refresh_listenable.dart';
import '../di/injection_container.dart' as di;

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final appRouter = GoRouter(
  initialLocation: '/',
  navigatorKey: _rootNavigatorKey,
  refreshListenable: GoRouterRefreshStream(di.sl<AuthBloc>().stream),
  redirect: (context, state) {
    final authState = context.read<AuthBloc>().state;
    final isSignup = state.matchedLocation == '/practitioner-signup';
    final isLoggingIn = state.matchedLocation == '/login';
    final isLanding = state.matchedLocation == '/';

    return authState.maybeWhen(
      authenticated: (_) => (isLoggingIn || isLanding || isSignup) ? '/dashboard' : null,
      unauthenticated: () => (isLoggingIn || isLanding || isSignup) ? null : '/',
      orElse: () => null,
    );
  },
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
      builder: (context, state) => BlocProvider<PractitionerSignupBloc>(
        create: (context) => di.sl<PractitionerSignupBloc>(),
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
              builder: (context, state) => const DashboardScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/consultation',
              builder: (context, state) => const ConsultationScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/cases',
              builder: (context, state) => const SavedCasesScreen(),
              routes: [
                GoRoute(
                  path: 'case-details/:id',
                  builder: (context, state) {
                    final id = state.pathParameters['id']!;
                    return BlocProvider<CaseDetailsBloc>(
                      create: (context) => di.sl<CaseDetailsBloc>()..add(CaseDetailsEvent.loadCaseDetails(id)),
                      child: CaseDetailsScreen(id: id),
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
              builder: (context, state) => const SettingsScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
);
