import 'package:flutter/material.dart';
import 'package:vaidyaai/l10n/app_localizations.dart';
import '../../../../core/theme/app_colors.dart';

class CasesFilterWidget extends StatelessWidget {
  final VoidCallback onTap;

  const CasesFilterWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: AppColors.surfaceContainerLowest,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.outlineVariant.withValues(alpha: 0.5)),
        ),
        child: Row(
          children: [
            const Icon(Icons.calendar_today_outlined, size: 20, color: AppColors.outline),
            const SizedBox(width: 12),
            Text(l10n.filterByDate, style: Theme.of(context).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w600, color: AppColors.onSurfaceVariant)),
            const SizedBox(width: 8),
            const Icon(Icons.keyboard_arrow_down, size: 20, color: AppColors.outline),
          ],
        ),
      ),
    );
  }
}
