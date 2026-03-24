import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vaidyaai/l10n/app_localizations.dart';
import '../../../../core/theme/app_colors.dart';
import '../bloc/consultation_bloc.dart';
import '../bloc/consultation_state.dart';

class AIResponseSection extends StatelessWidget {
  const AIResponseSection({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    
    return Container(
      decoration: BoxDecoration(
        color: AppColors.surfaceContainerHighest.withValues(alpha: 0.4),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.outlineVariant.withValues(alpha: 0.1)),
      ),
      padding: const EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(colors: [AppColors.primary, AppColors.primaryContainer]),
                ),
                child: const Icon(Icons.psychology, color: AppColors.onPrimary),
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(l10n.vaidyaEngine, style: Theme.of(context).textTheme.titleLarge?.copyWith(color: AppColors.primary, fontWeight: FontWeight.bold)),
                  Text(l10n.awaitingData, style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppColors.outline, fontWeight: FontWeight.w600)),
                ],
              )
            ],
          ),
          const SizedBox(height: 40),
          
          BlocBuilder<ConsultationBloc, ConsultationState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const _SkeletonState();
              }
              if (state.errorMessage != null) {
                return Center(child: Text(state.errorMessage!, style: const TextStyle(color: AppColors.error)));
              }
              if (state.diagnosisResult != null) {
                return _SuccessState(data: state.diagnosisResult!);
              }
              return const _EmptyState();
            },
          )
        ],
      ),
    );
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.auto_awesome, size: 64, color: AppColors.outlineVariant),
          const SizedBox(height: 24),
          Text(l10n.digitalInsightsEngine, style: Theme.of(context).textTheme.titleMedium?.copyWith(color: AppColors.outline, fontWeight: FontWeight.bold, letterSpacing: 1.5)),
          const SizedBox(height: 8),
          SizedBox(
            width: 250,
            child: Text(l10n.fillOutFormDesc, textAlign: TextAlign.center, style: const TextStyle(color: Colors.black45)),
          ),
        ],
      )
    );
  }
}

class _SkeletonState extends StatelessWidget {
  const _SkeletonState();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(width: 120, height: 16, color: Colors.black12),
        const SizedBox(height: 16),
        Container(height: 100, decoration: BoxDecoration(color: AppColors.surfaceContainerLowest, borderRadius: BorderRadius.circular(12))),
        const SizedBox(height: 32),
        Container(width: 160, height: 16, color: Colors.black12),
        const SizedBox(height: 16),
        Container(width: double.infinity, height: 8, color: Colors.black12),
        const SizedBox(height: 8),
        Container(width: double.infinity, height: 8, color: Colors.black12),
        const SizedBox(height: 32),
        Row(
          children: [
            Expanded(child: Container(height: 120, decoration: BoxDecoration(color: AppColors.surfaceContainerLowest, borderRadius: BorderRadius.circular(12)))),
            const SizedBox(width: 16),
            Expanded(child: Container(height: 120, decoration: BoxDecoration(color: AppColors.surfaceContainerLowest, borderRadius: BorderRadius.circular(12)))),
          ],
        )
      ],
    );
  }
}

class _SuccessState extends StatelessWidget {
  final Map<String, dynamic> data;
  const _SuccessState({required this.data});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(l10n.primaryImbalance, style: Theme.of(context).textTheme.titleSmall?.copyWith(color: AppColors.outline, fontWeight: FontWeight.bold)),
        const SizedBox(height: 12),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(color: AppColors.surfaceContainerLowest, borderRadius: BorderRadius.circular(12)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(data['imbalance'], style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: AppColors.primary, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Text(data['summary'], style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppColors.onSurfaceVariant)),
            ]
          )
        ),
        const SizedBox(height: 32),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 160,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(color: AppColors.surfaceContainerLowest, borderRadius: BorderRadius.circular(12), border: Border.all(color: AppColors.outlineVariant.withValues(alpha: 0.2))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(l10n.recommendedHerbs, style: const TextStyle(fontWeight: FontWeight.bold, color: AppColors.outline)),
                    const SizedBox(height: 12),
                    ...(data['herbs'] as List).map((h) => Padding(padding: const EdgeInsets.only(bottom: 6), child: Row(children: [const Icon(Icons.eco, size: 14, color: AppColors.primary), const SizedBox(width: 8), Text(h, style: const TextStyle(fontWeight: FontWeight.w600))]))),
                  ]
                )
              )
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Container(
                height: 160,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(color: AppColors.surfaceContainerLowest, borderRadius: BorderRadius.circular(12), border: Border.all(color: AppColors.outlineVariant.withValues(alpha: 0.2))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(l10n.lifestyleTweaks, style: const TextStyle(fontWeight: FontWeight.bold, color: AppColors.outline)),
                    const SizedBox(height: 12),
                    ...(data['lifestyle'] as List).map((l) => Padding(padding: const EdgeInsets.only(bottom: 6), child: Row(children: [const Icon(Icons.self_improvement, size: 14, color: AppColors.secondary), const SizedBox(width: 8), Expanded(child: Text(l, style: const TextStyle(fontWeight: FontWeight.w600), overflow: TextOverflow.ellipsis))]))),
                  ]
                )
              )
            ),
          ],
        )
      ],
    );
  }
}
