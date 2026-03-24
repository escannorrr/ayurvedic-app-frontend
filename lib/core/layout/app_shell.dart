import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:vaidyaai/l10n/app_localizations.dart';
import '../theme/app_colors.dart';
import '../../features/dashboard/presentation/bloc/dashboard_bloc.dart';
import '../../features/dashboard/presentation/bloc/dashboard_event.dart';
import '../../features/consultation/presentation/bloc/consultation_bloc.dart';
import '../../features/cases/presentation/bloc/saved_cases_bloc.dart';
import '../../features/settings/presentation/bloc/settings_bloc.dart';
import '../../core/di/injection_container.dart';
import '../utils/screen_size.dart';

class AppShell extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const AppShell({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    final bool isMobile = ScreenSize.isMobile(context);
    
    return MultiBlocProvider(
      providers: [
        BlocProvider<DashboardBloc>(
          create: (context) => DashboardBloc()..add(const DashboardEvent.loadDashboardData())
        ),
        BlocProvider<ConsultationBloc>(
          create: (context) => ConsultationBloc()
        ),
        BlocProvider<SavedCasesBloc>(
          create: (context) => sl<SavedCasesBloc>()
        ),
        BlocProvider<SettingsBloc>(
          create: (context) => sl<SettingsBloc>()
        ),
      ],
      child: Scaffold(
        backgroundColor: AppColors.surface,
        body: Row(
          children: [
            _AppSidebar(navigationShell: navigationShell),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _FloatingHeader(isMobile: isMobile),
                  Expanded(
                    child: navigationShell,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AppSidebar extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  final bool isDrawer;
  const _AppSidebar({required this.navigationShell, this.isDrawer = false});

  void _onItemTapped(int index, BuildContext context, String path) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final int currentIndex = navigationShell.currentIndex;

    return Container(
      width: 256,
      decoration: BoxDecoration(
        color: AppColors.surfaceContainerLow,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 40,
            offset: const Offset(0, 20),
          )
        ],
        border: const Border(right: BorderSide.none),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 24, left: 16, right: 16, bottom: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    l10n.appName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.primary,
                          letterSpacing: -0.5,
                        ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    l10n.appSubtitle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: AppColors.outline,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                _SidebarItem(
                  icon: Icons.dashboard_outlined, 
                  label: l10n.dashboard, 
                  isActive: currentIndex == 0,
                  onTap: () => _onItemTapped(0, context, '/dashboard'),
                ),
                _SidebarItem(
                  icon: Icons.medical_services_outlined, 
                  label: l10n.newConsultation, 
                  isActive: currentIndex == 1,
                  onTap: () => _onItemTapped(1, context, '/consultation'),
                ),
                _SidebarItem(
                  icon: Icons.folder_open_outlined, 
                  label: l10n.savedCases, 
                  isActive: currentIndex == 2,
                  onTap: () => _onItemTapped(2, context, '/cases'),
                ),
              ],
            ),
          ),
          const Divider(color: Colors.black12, height: 1),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: _SidebarItem(
              icon: Icons.settings_outlined, 
              label: l10n.settings, 
              isActive: currentIndex == 3,
              onTap: () => _onItemTapped(3, context, '/settings'),
            ),
          ),
        ],
      ),
    );
  }
}

class _SidebarItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isActive;
  final VoidCallback onTap;

  const _SidebarItem({required this.icon, required this.label, this.isActive = false, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: isActive ? AppColors.surfaceVariant.withValues(alpha: 0.5) : Colors.transparent,
          borderRadius: BorderRadius.circular(12),
          border: isActive ? const Border(right: BorderSide(color: AppColors.primary, width: 4)) : null,
        ),
        child: Row(
          children: [
            Icon(icon, color: isActive ? AppColors.primary : AppColors.outline, size: 24),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: isActive ? AppColors.primary : AppColors.outline,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _FloatingHeader extends StatelessWidget {
  final bool isMobile;
  const _FloatingHeader({required this.isMobile});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Container(
      height: 64,
      padding: EdgeInsets.symmetric(horizontal: isMobile ? 12 : 32),
      decoration: BoxDecoration(
        color: AppColors.surfaceBright.withValues(alpha: 0.8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.notifications_none, color: AppColors.outline)),
          const SizedBox(width: 8),
          Container(width: 1, height: 24, color: AppColors.outlineVariant.withValues(alpha: 0.2)),
          const SizedBox(width: 16),
          if (!isMobile)
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  l10n.doctorName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.onSurface,
                      ),
                ),
                Text(
                  l10n.ayurvedicSpecialist,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: AppColors.outline,
                        letterSpacing: 1.5,
                      ),
                ),
              ],
            ),
          const SizedBox(width: 12),
          const CircleAvatar(
            radius: 18,
            backgroundImage: NetworkImage('https://lh3.googleusercontent.com/aida-public/AB6AXuCb_W-Fw7KJ8bQZwEoz7ftnbnLjsbMDIgBS4StIuKj3K1L7heZJYYNO1vVyjayx0KZIy7A0ouYe1BYaz6RjGByHYEGrIywO4wI4rHTlHpMaloD4NVM6udH_x5Nr9FRZazVk9i2mR_WAdZpKOe0uoQ52M0mAeQdIPMnrwF3fxVyqQpfMc_PIyasZMVraBE9meWmqKB49JWlId9SlNBNm73vo9RL3xDfOQKz-D70i55Aix5Cs8T-i2DBbjQjhmeWLEP1GRrLaffP-JfA'),
          )
        ],
      ),
    );
  }
}
