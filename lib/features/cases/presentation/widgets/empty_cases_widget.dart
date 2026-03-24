import 'package:flutter/material.dart';
import 'package:vaidyaai/l10n/app_localizations.dart';
import '../../../../core/theme/app_colors.dart';

class EmptyCasesWidget extends StatelessWidget {
  const EmptyCasesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 64),
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: AppColors.surfaceContainerLow,
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.outlineVariant.withValues(alpha: 0.3)),
            ),
            child: Icon(Icons.folder_off_outlined, size: 48, color: AppColors.outline.withValues(alpha: 0.8)),
          ),
          const SizedBox(height: 24),
          Text(l10n.noSavedCases, style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold, color: AppColors.onSurface)),
          const SizedBox(height: 8),
          Text(l10n.noSavedCasesDesc, style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppColors.onSurfaceVariant)),
        ],
      ),
    );
  }
}
