import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vaidyaai/l10n/app_localizations.dart';
import '../../../../core/theme/app_colors.dart';
import '../bloc/consultation_bloc.dart';
import '../bloc/consultation_state.dart';
import 'package:vaidyaai/features/ai_diagnosis/domain/entities/ai_diagnosis_entity.dart';

class AIResponseSection extends StatelessWidget {
  const AIResponseSection({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    
    return Container(
      decoration: BoxDecoration(
        color: AppColors.surfaceContainerLow, 
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(32),
      child: BlocBuilder<ConsultationBloc, ConsultationState>(
        builder: (context, state) {
          final theme = Theme.of(context);
          final isLoaded = state.aiDiagnosis != null && state.aiDiagnosis is AiDiagnosisEntity;
          
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color: const Color(0xFF4A6741),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(Icons.psychology, color: Colors.white),
                  ),
                  const SizedBox(width: 16),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Vaidya Neural Engine v4.3", 
                          style: theme.textTheme.titleMedium?.copyWith(
                            color: AppColors.onSurface, 
                            fontWeight: FontWeight.bold
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          isLoaded ? "Diagnostic Insights Loaded" : l10n.awaitingData, 
                          style: theme.textTheme.labelSmall?.copyWith(
                            color: isLoaded ? const Color(0xFF4A6741) : AppColors.outline,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 32),
              
              if (state.isLoading)
                const _SkeletonState()
              else if (state.errorMessage != null)
                Center(child: Text(state.errorMessage!, style: const TextStyle(color: AppColors.error)))
              else if (isLoaded)
                _AiResultState(diagnosis: state.aiDiagnosis as AiDiagnosisEntity)
              else if (state.diagnosisResult != null)
                _SuccessState(data: state.diagnosisResult!)
              else
                const _EmptyState(),
            ],
          );
        },
      ),
    );
  }
}

class _AiResultState extends StatelessWidget {
  final AiDiagnosisEntity diagnosis;
  const _AiResultState({required this.diagnosis});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Clinical Diagnosis Summary (Accented Container)
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: const Color(0xFFF9FBF2),
            borderRadius: BorderRadius.circular(12),
            border: const Border(
              left: BorderSide(color: Color(0xFF4A6741), width: 4),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "CLINICAL DIAGNOSIS",
                style: theme.textTheme.labelSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                  color: AppColors.outline,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                diagnosis.diagnosisName,
                style: theme.textTheme.titleLarge?.copyWith(
                  color: const Color(0xFF4A6741),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                diagnosis.summary,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: AppColors.onSurfaceVariant,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 32),
        
        // Protocol Grid (Medicinal vs Lifestyle)
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: _ProtocolColumn(
                title: "MEDICINAL",
                items: diagnosis.medicinalProtocol,
                icon: Icons.medical_services_outlined,
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: _ProtocolColumn(
                title: "LIFESTYLE",
                items: diagnosis.lifestyleDiet,
                icon: Icons.restaurant_menu_outlined,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _ProtocolColumn extends StatelessWidget {
  final String title;
  final List<String> items;
  final IconData icon;

  const _ProtocolColumn({required this.title, required this.items, required this.icon});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: theme.textTheme.labelSmall?.copyWith(
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
            color: AppColors.outline,
          ),
        ),
        const SizedBox(height: 12),
        ...items.map((item) => Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppColors.surfaceContainerLowest,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: AppColors.outlineVariant.withValues(alpha: 0.1)),
            ),
            child: Row(
              children: [
                Icon(icon, size: 14, color: const Color(0xFF4A6741)),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    item.split(':').first.trim(),
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        )),
      ],
    );
  }
}

class _CompactDoshaLegend extends StatelessWidget {
  final Map<String, double> data;
  const _CompactDoshaLegend({required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: data.entries.map((e) => Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Row(
          children: [
            Container(width: 8, height: 8, decoration: BoxDecoration(color: _getDoshaColor(e.key), shape: BoxShape.circle)),
            const SizedBox(width: 8),
            Text(e.key, style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: AppColors.outline)),
            const Spacer(),
            Text("${(e.value * 100).toInt()}%", style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
          ],
        ),
      )).toList(),
    );
  }

  Color _getDoshaColor(String dosha) {
    switch (dosha) {
      case 'Vata': return const Color(0xFF5D8A82);
      case 'Pitta': return AppColors.secondary;
      case 'Kapha': return AppColors.primary;
      default: return AppColors.outline;
    }
  }
}

class _DoshaChart extends StatelessWidget {
  final Map<String, double> data;
  const _DoshaChart({required this.data});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _HalfRadialPainter(data: data),
    );
  }
}

class _HalfRadialPainter extends CustomPainter {
  final Map<String, double> data;
  _HalfRadialPainter({required this.data});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height);
    final radius = size.width / 2;
    const strokeWidth = 10.0;
    const gap = 4.0;

    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    final doshas = ['Kapha', 'Pitta', 'Vata'];
    final colors = [AppColors.primary, AppColors.secondary, const Color(0xFF5D8A82)];

    for (int i = 0; i < doshas.length; i++) {
        final currentRadius = radius - (i * (strokeWidth + gap));
        final val = data[doshas[i]] ?? 0.0;
        
        paint.color = AppColors.surfaceContainerHighest.withValues(alpha: 0.3);
        canvas.drawArc(Rect.fromCircle(center: center, radius: currentRadius), math.pi, math.pi, false, paint);

        paint.color = colors[i];
        canvas.drawArc(Rect.fromCircle(center: center, radius: currentRadius), math.pi, math.pi * val, false, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
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
