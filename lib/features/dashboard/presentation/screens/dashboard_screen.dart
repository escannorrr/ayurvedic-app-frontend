import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../../core/utils/screen_size.dart';
import '../widgets/stat_card.dart';
import '../widgets/recent_case_tile.dart';
import '../bloc/dashboard_bloc.dart';
import '../bloc/dashboard_event.dart';
import '../bloc/dashboard_state.dart';
import '../../../../core/layout/max_width_container.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final l10n = AppLocalizations.of(context)!;
    final bool isMobile = ScreenSize.isMobile(context);
    final bool isTablet = ScreenSize.isTablet(context);
    
    return SingleChildScrollView(
      padding: EdgeInsets.only(
        top: isMobile ? 16 : 32, 
        left: isMobile ? 16 : 32, 
        right: isMobile ? 16 : 32, 
        bottom: 48
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Hero Section
          if (isMobile)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(l10n.namasteDoctor, style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w800, color: AppColors.onSurface)),
                const SizedBox(height: 16),
                Wrap(
                  spacing: 12,
                  runSpacing: 12,
                  children: [
                    _HeroButton(
                      icon: Icons.add, 
                      label: l10n.newConsultation, 
                      isPrimary: true,
                      onTap: () => context.go('/consultation'),
                    ),
                    _HeroButton(
                      icon: Icons.upload_file, 
                      label: l10n.uploadCase, 
                      isPrimary: false,
                      onTap: () {},
                    ),
                  ],
                )
              ],
            )
          else
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(l10n.namasteDoctor, style: Theme.of(context).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.w800, color: AppColors.onSurface, letterSpacing: -0.5)),
                      const SizedBox(height: 4),
                      Text(l10n.todayBeautiful, style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: AppColors.onSurfaceVariant)),
                    ],
                  ),
                ),
                Row(
                  children: [
                    _HeroButton(
                      icon: Icons.add, 
                      label: l10n.newConsultation, 
                      isPrimary: true,
                      onTap: () => context.go('/consultation'),
                    ),
                    const SizedBox(width: 12),
                    _HeroButton(
                      icon: Icons.upload_file, 
                      label: l10n.uploadCase, 
                      isPrimary: false,
                      onTap: () {},
                    ),
                  ],
                )
              ],
            ),
          const SizedBox(height: 40),

          BlocBuilder<DashboardBloc, DashboardState>(
            builder: (context, state) {
              return state.maybeWhen(
                success: (patientsToday, aiConsultations, savedCases, recentCases) {
                  return Column(
                    children: [
                      // Stats Row
                      Row(
                        children: [
                          Expanded(child: StatCard(title: l10n.patientsToday, value: patientsToday.toString(), bgIcon: Icons.group_outlined, footerIcon: Icons.trending_up, footerText: l10n.fromYesterday, highlightColor: AppColors.primary, backgroundColor: AppColors.surfaceContainerLow)),
                          const SizedBox(width: 24),
                          Expanded(child: StatCard(title: l10n.aiConsultations, value: aiConsultations.toString(), bgIcon: Icons.auto_awesome_outlined, footerIcon: Icons.bolt, footerText: l10n.activeAnalysis, highlightColor: AppColors.secondary, backgroundColor: AppColors.surfaceContainerHighest)),
                          const SizedBox(width: 24),
                          Expanded(child: StatCard(title: l10n.savedCases, value: savedCases.toString(), bgIcon: Icons.folder_special_outlined, footerIcon: Icons.visibility_outlined, footerText: l10n.viewLibrary, highlightColor: AppColors.onSurface, backgroundColor: AppColors.surfaceContainer)),
                        ],
                      ),
                      const SizedBox(height: 40),
                      
                      // Main Content Split
                      if (isMobile)
                        Column(
                          children: [
                            _buildRecentConsultations(context, l10n, recentCases),
                            const SizedBox(height: 32),
                            _buildInsights(context, l10n),
                          ],
                        )
                      else
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 2,
                              child: _buildRecentConsultations(context, l10n, recentCases),
                            ),
                            const SizedBox(width: 32),
                            Expanded(
                              flex: 1,
                              child: _buildInsights(context, l10n),
                            )
                          ],
                        )
                    ],
                  );
                },
                orElse: () {
                  return Column(
                    children: [
                      Row(
                        children: const [
                          Expanded(child: StatCardSkeleton(backgroundColor: AppColors.surfaceContainerLow)),
                          SizedBox(width: 24),
                          Expanded(child: StatCardSkeleton(backgroundColor: AppColors.surfaceContainerHighest)),
                          SizedBox(width: 24),
                          Expanded(child: StatCardSkeleton(backgroundColor: AppColors.surfaceContainer)),
                        ],
                      ),
                      const SizedBox(height: 40),
                      if (isMobile)
                        const Column(
                          children: [
                            RecentCaseTileSkeleton(),
                            SizedBox(height: 16),
                            RecentCaseTileSkeleton(),
                          ],
                        )
                      else
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Expanded(flex: 2, child: Column(children: [RecentCaseTileSkeleton(), RecentCaseTileSkeleton(), RecentCaseTileSkeleton()])),
                            const SizedBox(width: 32),
                            Expanded(flex: 1, child: Container(height: 300, decoration: BoxDecoration(color: Colors.black12, borderRadius: BorderRadius.circular(32)))),
                          ],
                        )
                    ],
                  );
                }
              );
            },
          )
        ],
      ),
    );
  }

  Widget _buildRecentConsultations(BuildContext context, AppLocalizations l10n, List<Map<String, String>> recentCases) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(l10n.recentConsultations, style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold)),
            TextButton(onPressed: (){}, child: Text(l10n.viewAllRecords, style: const TextStyle(color: AppColors.primary, fontWeight: FontWeight.bold))),
          ],
        ),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: AppColors.surfaceContainerLow.withValues(alpha: 0.5),
            borderRadius: BorderRadius.circular(24),
          ),
          child: Column(
            children: [
              // Header
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: Row(
                  children: [
                    Expanded(flex: 5, child: Text(l10n.patientNameCol, style: Theme.of(context).textTheme.labelSmall?.copyWith(fontWeight: FontWeight.bold, color: AppColors.outline, letterSpacing: 1.5))),
                    if (!ScreenSize.isMobile(context))
                      Expanded(flex: 3, child: Text(l10n.dateCol, style: Theme.of(context).textTheme.labelSmall?.copyWith(fontWeight: FontWeight.bold, color: AppColors.outline, letterSpacing: 1.5))),
                    Expanded(flex: 4, child: Text(l10n.diagnosisCol, style: Theme.of(context).textTheme.labelSmall?.copyWith(fontWeight: FontWeight.bold, color: AppColors.outline, letterSpacing: 1.5))),
                  ],
                ),
              ),
              ...recentCases.map((e) => RecentCaseTile(
                id: e['id']!,
                name: e['name']!,
                initials: e['initials']!,
                date: e['date']!,
                diagnosis: e['diagnosis']!,
                colorClass: e['colorClass']!,
              )),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildInsights(BuildContext context, AppLocalizations l10n) {
    return Column(
      children: [
        // AI Insights Card
        Container(
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: AppColors.primaryContainer,
            borderRadius: BorderRadius.circular(32),
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                right: -32,
                bottom: -32,
                child: Icon(Icons.eco_outlined, size: 180, color: Colors.black.withValues(alpha: 0.1)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(l10n.aiInsights, style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: AppColors.onPrimary, fontWeight: FontWeight.bold, height: 1.2)),
                  const SizedBox(height: 16),
                  Text(l10n.insightsDesc, style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppColors.onPrimaryContainer, height: 1.5)),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.surfaceBright,
                      foregroundColor: AppColors.primary,
                      elevation: 0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    ),
                    child: Text(l10n.orderSupplies, style: const TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 24),
        // System Health
        Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.03),
                blurRadius: 40,
                offset: const Offset(0, 20),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(l10n.systemHealth, style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold, color: AppColors.onSurface)),
              const SizedBox(height: 16),
              _HealthBar(label: l10n.dbSync, status: l10n.operational, progress: 0.98),
              const SizedBox(height: 12),
              _HealthBar(label: l10n.aiEngineStatus, status: l10n.accuracy, progress: 0.94),
            ],
          ),
        )
      ],
    );
  }
}

class _HeroButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isPrimary;
  final VoidCallback onTap;

  const _HeroButton({required this.icon, required this.label, required this.isPrimary, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        decoration: BoxDecoration(
          color: isPrimary ? AppColors.primary : AppColors.surfaceContainerLowest,
          borderRadius: BorderRadius.circular(12),
          border: isPrimary ? null : Border.all(color: AppColors.primary.withValues(alpha: 0.2)),
          boxShadow: isPrimary ? [
            BoxShadow(color: Colors.black.withValues(alpha: 0.05), blurRadius: 4, offset: const Offset(0, 2))
          ] : null,
        ),
        child: Row(
          children: [
            Icon(icon, size: 20, color: isPrimary ? AppColors.onPrimary : AppColors.primary),
            const SizedBox(width: 8),
            Text(label, style: Theme.of(context).textTheme.labelLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: isPrimary ? AppColors.onPrimary : AppColors.primary,
            )),
          ],
        ),
      ),
    );
  }
}

class _HealthBar extends StatelessWidget {
  final String label;
  final String status;
  final double progress;

  const _HealthBar({required this.label, required this.status, required this.progress});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label, style: Theme.of(context).textTheme.labelSmall?.copyWith(fontWeight: FontWeight.w500, color: AppColors.onSurfaceVariant)),
            Text(status, style: Theme.of(context).textTheme.labelSmall?.copyWith(fontWeight: FontWeight.bold, color: AppColors.primary)),
          ],
        ),
        const SizedBox(height: 8),
        Container(
          height: 6,
          width: double.infinity,
          decoration: BoxDecoration(color: AppColors.surfaceContainer, borderRadius: BorderRadius.circular(4)),
          child: Align(
            alignment: Alignment.centerLeft,
            child: FractionallySizedBox(
              widthFactor: progress,
              child: Container(decoration: BoxDecoration(color: AppColors.primary, borderRadius: BorderRadius.circular(4))),
            ),
          ),
        ),
      ],
    );
  }
}
