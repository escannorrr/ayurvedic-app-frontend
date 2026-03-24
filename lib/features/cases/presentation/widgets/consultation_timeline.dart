import 'package:flutter/material.dart';
import 'package:vaidyaai/l10n/app_localizations.dart';
import '../../../../core/theme/app_colors.dart';
import '../../domain/entities/case_details_entity.dart';
import 'consultation_tile.dart';

class ConsultationTimeline extends StatelessWidget {
  final List<ConsultationEntity> consultations;

  const ConsultationTimeline({super.key, required this.consultations});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              l10n.consultationJourney,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.filter_list, color: AppColors.outline),
              style: IconButton.styleFrom(
                backgroundColor: AppColors.surfaceContainer,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
            ),
          ],
        ),
        const SizedBox(height: 32),
        Column(
          children: consultations.asMap().entries.map((entry) {
            final index = entry.key;
            final consultation = entry.value;
            final isLast = index == consultations.length - 1;
            return ConsultationTile(consultation: consultation, isLast: isLast);
          }).toList(),
        ),
      ],
    );
  }
}
