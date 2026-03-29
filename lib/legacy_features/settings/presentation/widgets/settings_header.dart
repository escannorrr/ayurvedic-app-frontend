import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import 'package:vaidyaai/l10n/app_localizations.dart';

class SettingsHeader extends StatelessWidget {
  const SettingsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.settings,
          style: Theme.of(context).textTheme.displaySmall?.copyWith(
                fontFamily: 'Manrope',
                fontWeight: FontWeight.bold,
                color: AppColors.primary, // Using primary green as per image
                fontSize: 32,
              ),
        ),
        const SizedBox(height: 8),
        Text(
          l10n.settingsDescription,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontFamily: 'Inter',
                color: AppColors.onSurfaceVariant.withValues(alpha: 0.8),
                fontSize: 16,
              ),
        ),
      ],
    );
  }
}
