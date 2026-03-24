import 'package:flutter/material.dart';
import 'package:vaidyaai/l10n/app_localizations.dart';
import '../../../../core/theme/app_colors.dart';

class ViewAiButton extends StatelessWidget {
  const ViewAiButton({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.primaryContainer,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withValues(alpha: 0.15),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            right: -16,
            bottom: -16,
            child: Opacity(
              opacity: 0.1,
              child: const Icon(Icons.psychology_alt, size: 128, color: Colors.white),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: AppColors.onPrimaryContainer.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(Icons.auto_awesome, color: Colors.white, size: 20),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    l10n.vaidyaAiAnalysis,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: AppColors.onPrimaryContainer,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Text(
                'Based on recent progress, we recommend reducing the dosage of coolant herbs and introducing light Pranayama to stabilize Kapha.',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.onPrimaryContainer.withValues(alpha: 0.9),
                  height: 1.6,
                ),
              ),
              const SizedBox(height: 24),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.refresh, size: 16),
                label: Text(l10n.reRunAiAnalysis.toUpperCase()),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.onPrimaryContainer,
                  foregroundColor: AppColors.primary,
                  minimumSize: const Size(double.infinity, 56),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  textStyle: const TextStyle(fontWeight: FontWeight.w900, letterSpacing: 0.5),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
