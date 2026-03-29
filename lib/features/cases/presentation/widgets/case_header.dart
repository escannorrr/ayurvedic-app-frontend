import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vaidyaai/l10n/app_localizations.dart';
import '../../../../core/theme/app_colors.dart';

class CaseHeader extends StatelessWidget {
  final String caseId;

  const CaseHeader({super.key, required this.caseId});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    
    return Padding(
      padding: const EdgeInsets.only(bottom: 32),
      child: Row(
        children: [
          Material(
            color: Colors.transparent,
            child: IconButton(
              onPressed: () => context.go('/cases'),
              icon: const Icon(Icons.arrow_back_rounded, size: 24),
              color: AppColors.primary,
              tooltip: l10n.backToCases,
              style: IconButton.styleFrom(
                backgroundColor: AppColors.surfaceContainerLow,
                hoverColor: AppColors.surfaceContainerHigh,
              ),
            ),
          ),
          const SizedBox(width: 16),
          GestureDetector(
            onTap: () => context.go('/cases'),
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    l10n.savedCasesTitle,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: AppColors.outline,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Icon(Icons.chevron_right_rounded, size: 18, color: AppColors.outline),
                  const SizedBox(width: 12),
                  Text(
                    l10n.caseIdLabel(caseId.length > 4 ? caseId.substring(0, 4).toUpperCase() : caseId.toUpperCase()),
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: AppColors.primary,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 0.5,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
