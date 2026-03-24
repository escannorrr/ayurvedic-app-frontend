import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:vaidyaai/l10n/app_localizations.dart';
import '../../../../core/theme/app_colors.dart';
import '../bloc/saved_cases_bloc.dart';
import '../bloc/saved_cases_event.dart';
import '../bloc/saved_cases_state.dart';
import '../widgets/cases_skeleton_loader.dart';
import '../widgets/empty_cases_widget.dart';
import '../widgets/case_list_view.dart';
import '../../../../core/utils/screen_size.dart';
import '../../../../core/layout/max_width_container.dart';

class SavedCasesScreen extends StatefulWidget {
  const SavedCasesScreen({super.key});

  @override
  State<SavedCasesScreen> createState() => _SavedCasesScreenState();
}

class _SavedCasesScreenState extends State<SavedCasesScreen> with AutomaticKeepAliveClientMixin {
  final TextEditingController _searchController = TextEditingController();

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    context.read<SavedCasesBloc>().add(const SavedCasesEvent.fetchCases());
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final l10n = AppLocalizations.of(context)!;
    final bool isMobile = ScreenSize.isMobile(context);
    
    return SingleChildScrollView(
      padding: EdgeInsets.only(
        top: isMobile ? 16 : 32, 
        left: isMobile ? 16 : 32, 
        right: isMobile ? 16 : 32, 
        bottom: 48
      ),
      child: MaxWidthContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Hero Header Section
            if (isMobile)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    l10n.archiveRecords.toUpperCase(),
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: AppColors.secondary,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    l10n.savedCasesTitle,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.w900,
                      color: AppColors.onSurface,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    l10n.savedCasesHeroDesc,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: AppColors.onSurfaceVariant,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () => context.go('/consultation'),
                      icon: const Icon(Icons.add_circle_outline, size: 20),
                      label: Text(l10n.newCaseBtn),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        foregroundColor: AppColors.onPrimary,
                        padding: const EdgeInsets.symmetric(vertical: 18),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                    ),
                  ),
                ],
              )
            else
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          l10n.archiveRecords.toUpperCase(),
                          style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            color: AppColors.secondary,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          l10n.savedCasesTitle,
                          style: Theme.of(context).textTheme.displayMedium?.copyWith(
                            fontWeight: FontWeight.w900,
                            color: AppColors.onSurface,
                            letterSpacing: -1,
                          ),
                        ),
                        const SizedBox(height: 16),
                        ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 600),
                          child: Text(
                            l10n.savedCasesHeroDesc,
                            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: AppColors.onSurfaceVariant,
                              height: 1.6,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 24),
                  ElevatedButton.icon(
                    onPressed: () => context.go('/consultation'),
                    icon: const Icon(Icons.add_circle_outline, size: 20),
                    label: Text(l10n.newCaseBtn),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      foregroundColor: AppColors.onPrimary,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      elevation: 4,
                      shadowColor: AppColors.primary.withValues(alpha: 0.2),
                    ),
                  ),
                ],
              ),
            
            const SizedBox(height: 48),

            // Search Bar
            Container(
              height: 48,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: AppColors.surfaceContainerLow,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                   const Icon(Icons.search, size: 20, color: AppColors.outline),
                   const SizedBox(width: 12),
                   Expanded(
                     child: TextField(
                       controller: _searchController,
                       onChanged: (value) {
                         context.read<SavedCasesBloc>().add(SavedCasesEvent.searchCases(value));
                       },
                       decoration: InputDecoration(
                         hintText: l10n.searchPatients,
                         hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppColors.outline),
                         border: InputBorder.none,
                         isDense: true,
                       ),
                     ),
                   ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // Filter Bar
            Wrap(
              spacing: 8,
              runSpacing: 8,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                const _FilterChip(icon: Icons.calendar_today, label: 'Date: Last 30 Days'),
                const _FilterChip(icon: Icons.filter_list, label: 'All Cases'), // Simplified for now
                const _FilterChip(icon: Icons.medication_outlined, label: 'All Treatments'),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    l10n.clearAllFilters,
                    style: const TextStyle(
                      color: AppColors.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 32),

            // Records List (Table Container)
            Container(
              decoration: BoxDecoration(
                color: AppColors.surfaceContainerLow,
                borderRadius: BorderRadius.circular(24),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: BlocBuilder<SavedCasesBloc, SavedCasesState>(
                  builder: (context, state) {
                    if (state.isLoading) {
                      return const CasesSkeletonLoader();
                    }
                    if (state.errorMessage != null) {
                      return Center(child: Text(state.errorMessage!, style: const TextStyle(color: AppColors.error)));
                    }
                    if (state.cases.isEmpty) {
                      return const EmptyCasesWidget();
                    }
                    return CaseListView(cases: state.cases, isMobile: isMobile);
                  },
                ),
              ),
            ),
            
            const SizedBox(height: 32),
            
            // Footer Pagination
            const _PaginationFooter(),
          ],
        ),
      ),
    );
  }
}


class _FilterChip extends StatelessWidget {
  final IconData icon;
  final String label;
  const _FilterChip({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.surfaceContainerLow,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 18, color: AppColors.outline),
          const SizedBox(width: 8),
          Text(
            label,
            style: TextStyle(color: AppColors.outline, fontSize: 13, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}

class _PaginationFooter extends StatelessWidget {
  const _PaginationFooter();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            l10n.showingArchivedCases,
            style: TextStyle(color: AppColors.outline, fontSize: 12),
          ),
          Row(
            children: [
              _PageNavButton(icon: Icons.chevron_left),
              const SizedBox(width: 8),
              _PageNumberButton(number: '1', isActive: true),
              _PageNumberButton(number: '2', isActive: false),
              _PageNumberButton(number: '3', isActive: false),
              const SizedBox(width: 8),
              _PageNavButton(icon: Icons.chevron_right),
            ],
          ),
        ],
      ),
    );
  }
}

class _PageNavButton extends StatelessWidget {
  final IconData icon;
  const _PageNavButton({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36,
      height: 36,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.outlineVariant.withValues(alpha: 0.2)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Icon(icon, size: 18, color: AppColors.outline),
    );
  }
}

class _PageNumberButton extends StatelessWidget {
  final String number;
  final bool isActive;
  const _PageNumberButton({required this.number, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36,
      height: 36,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isActive ? AppColors.primary : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        number,
        style: TextStyle(
          color: isActive ? AppColors.onPrimary : AppColors.outline,
          fontSize: 12,
          fontWeight: isActive ? FontWeight.bold : FontWeight.w500,
        ),
      ),
    );
  }
}
