import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../l10n/app_localizations.dart';
import '../bloc/ai_diagnosis_bloc.dart';
import '../bloc/ai_diagnosis_state.dart';
import '../bloc/ai_diagnosis_event.dart';
import '../../domain/entities/ai_diagnosis_entity.dart';

class AiDiagnosisDialog extends StatefulWidget {
  final List<String> symptoms;
  final Map<String, dynamic>? patientInfo;

  const AiDiagnosisDialog({
    super.key,
    required this.symptoms,
    this.patientInfo,
  });

  static Future<AiDiagnosisEntity?> show(
    BuildContext context, {
    required List<String> symptoms,
    Map<String, dynamic>? patientInfo,
    required AiDiagnosisBloc bloc,
  }) {
    return showDialog<AiDiagnosisEntity>(
      context: context,
      barrierDismissible: false,
      builder: (context) => BlocProvider.value(
        value: bloc,
        child: AiDiagnosisDialog(symptoms: symptoms, patientInfo: patientInfo),
      ),
    );
  }

  @override
  State<AiDiagnosisDialog> createState() => _AiDiagnosisDialogState();
}

class _AiDiagnosisDialogState extends State<AiDiagnosisDialog> {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      backgroundColor: AppColors.surface,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 600,
          maxHeight: size.height * 0.8,
        ),
        child: BlocBuilder<AiDiagnosisBloc, AiDiagnosisState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: const Color(0xFF4A6741),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Icon(Icons.psychology, color: Colors.white, size: 24),
                          ),
                          const SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "AI Diagnostic Insights",
                                style: theme.textTheme.titleLarge?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.onSurface,
                                ),
                              ),
                              Text(
                                "Powered by Vaidya Neural Engine v4.3",
                                style: theme.textTheme.labelSmall?.copyWith(
                                  color: AppColors.outline,
                                  letterSpacing: 0.5,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      if (state is! AiDiagnosisLoading)
                        IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: const Icon(Icons.close_rounded),
                        ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Flexible(
                    child: SingleChildScrollView(
                      child: _buildContent(context, state, l10n, theme),
                    ),
                  ),
                  const SizedBox(height: 32),
                  _buildActions(context, state, l10n),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context, AiDiagnosisState state, AppLocalizations l10n, ThemeData theme) {
    if (state is AiDiagnosisLoading) {
      return Center(
        child: Column(
          children: [
            const SizedBox(height: 60),
            _LeafLoadingAnimation(),
            const SizedBox(height: 32),
            Text(
              l10n.analyzingSymptoms, 
              style: theme.textTheme.titleMedium?.copyWith(
                fontFamily: 'Manrope',
                color: AppColors.primary,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              "Curating Ayurvedic wisdom...",
              style: theme.textTheme.bodySmall?.copyWith(color: AppColors.outline),
            ),
            const SizedBox(height: 60),
          ],
        ),
      );
    }

    if (state is AiDiagnosisError) {
      return Center(
        child: Column(
          children: [
            const Icon(Icons.error_outline, color: AppColors.error, size: 48),
            const SizedBox(height: 16),
            Text(state.message, textAlign: TextAlign.center),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                final info = widget.patientInfo ?? {};
                context.read<AiDiagnosisBloc>().add(
                  GenerateAiDiagnosisEvent(
                    symptoms: widget.symptoms,
                    query: info['query']?.toString(),
                    durationDays: (int.tryParse(info['duration']?.toString().split(' ').first ?? '1') ?? 1) * 7,
                    prakriti: info['prakriti']?.toString().toLowerCase(),
                    age: int.tryParse(info['age']?.toString() ?? '28'),
                    gender: info['gender']?.toString().toLowerCase(),
                  ),
                );
              },
              child: Text(l10n.errorRetry),
            ),
          ],
        ),
      );
    }

    if (state is AiDiagnosisLoaded) {
      return _buildResultView(state.diagnosis, l10n, theme);
    }

    return const SizedBox.shrink();
  }

  Widget _buildResultView(AiDiagnosisEntity diagnosis, AppLocalizations l10n, ThemeData theme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Dosha Analysis Section
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "DOSHA ANALYSIS",
                  style: theme.textTheme.labelSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                    color: AppColors.outline,
                  ),
                ),
                Text(
                  "Dominant: ${_getDominantDosha(diagnosis.doshaPercentages)}",
                  style: theme.textTheme.labelMedium?.copyWith(
                    fontStyle: FontStyle.italic,
                    color: const Color(0xFF8B7330),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _IndividualDoshaChart(label: 'VATA', value: diagnosis.doshaPercentages['Vata'] ?? 0, color: const Color(0xFF4A6741)),
                _IndividualDoshaChart(label: 'PITTA', value: diagnosis.doshaPercentages['Pitta'] ?? 0, color: const Color(0xFF8B7330)),
                _IndividualDoshaChart(label: 'KAPHA', value: diagnosis.doshaPercentages['Kapha'] ?? 0, color: const Color(0xFF70777B)),
              ],
            ),
          ],
        ),
        const SizedBox(height: 48),
        
        // Clinical Diagnosis Summary
        Container(
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
                "CLINICAL DIAGNOSIS SUMMARY",
                style: theme.textTheme.labelSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                  color: AppColors.outline,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                diagnosis.diagnosisName,
                style: theme.textTheme.headlineSmall?.copyWith(
                  color: const Color(0xFF4A6741),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Manrope', 
                ),
              ),
              const SizedBox(height: 16),
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
        
        // Treatment Grid
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: _TreatmentSection(
                title: "MEDICINAL PROTOCOL",
                items: diagnosis.medicinalProtocol,
                icon: Icons.medical_services_outlined,
              ),
            ),
            const SizedBox(width: 24),
            Expanded(
              child: _TreatmentSection(
                title: "LIFESTYLE & DIET",
                items: diagnosis.lifestyleDiet,
                icon: Icons.restaurant_menu_outlined,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildActions(BuildContext context, AiDiagnosisState state, AppLocalizations l10n) {
    if (state is! AiDiagnosisLoaded) return const SizedBox.shrink();

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ElevatedButton.icon(
          onPressed: () => Navigator.pop(context, state.diagnosis),
          icon: const Icon(Icons.save_rounded, size: 18),
          label: const Text("Save to Case"),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF4A6741),
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            textStyle: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  String _getDominantDosha(Map<String, double> percentages) {
    if (percentages.isEmpty) return "Vata";
    return percentages.entries.reduce((a, b) => a.value > b.value ? a : b).key;
  }
}

class _IndividualDoshaChart extends StatelessWidget {
  final String label;
  final double value;
  final Color color;

  const _IndividualDoshaChart({required this.label, required this.value, required this.color});

  @override
  Widget build(BuildContext context) {
    // Robustly handle values whether they are 0-1 or 0-100
    final normalizedValue = value > 1.0 ? (value / 100.0).clamp(0.0, 1.0) : value.clamp(0.0, 1.0);
    return Column(
      children: [
        SizedBox(
          height: 80,
          width: 80,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomPaint(
                size: const Size(80, 80),
                painter: _SingleHalfRadialPainter(value: normalizedValue, color: color),
              ),
              Positioned(
                bottom: 8,
                left: 0,
                right: 0,
                child: Center(
                  child: Text(
                    "${(normalizedValue * 100).toInt()}%",
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 10, letterSpacing: 1.2, color: AppColors.outline),
        ),
      ],
    );
  }
}

class _SingleHalfRadialPainter extends CustomPainter {
  final double value;
  final Color color;

  _SingleHalfRadialPainter({required this.value, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height * 0.8);
    final radius = size.width / 2.2;
    const strokeWidth = 10.0;

    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    // Background Track
    paint.color = AppColors.surfaceContainerHighest;
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      math.pi,
      math.pi,
      false,
      paint,
    );

    // Value Arc (Sweep exactly normalized 180 degrees)
    paint.color = color;
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      math.pi,
      math.pi * value.clamp(0.0, 1.0),
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class _TreatmentSection extends StatelessWidget {
  final String title;
  final List<String> items;
  final IconData icon;

  const _TreatmentSection({required this.title, required this.items, required this.icon});

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
        const SizedBox(height: 16),
        ...items.map((item) => Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.surfaceContainerLow,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.5),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(icon, size: 20, color: const Color(0xFF4A6741)),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.contains(':') ? item.split(':').first.trim() : item,
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                      ),
                      if (item.contains(':'))
                        Text(
                          item.split(':').last.trim(),
                          style: TextStyle(color: AppColors.outline, fontSize: 11),
                        ),
                    ],
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

class _LeafLoadingAnimation extends StatefulWidget {
  @override
  State<_LeafLoadingAnimation> createState() => _LeafLoadingAnimationState();
}

class _LeafLoadingAnimationState extends State<_LeafLoadingAnimation> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 2))..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Opacity(
          opacity: 0.6 + (0.4 * _controller.value),
          child: Transform.scale(
            scale: 0.8 + (0.4 * _controller.value),
            child: const Icon(Icons.eco, color: AppColors.primary, size: 56),
          ),
        );
      },
    );
  }
}
