import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vaidyaai/l10n/app_localizations.dart';
import 'package:vaidyaai/core/theme/app_colors.dart';
import 'package:vaidyaai/features/consultation/presentation/bloc/consultation_bloc.dart';
import 'package:vaidyaai/features/consultation/presentation/bloc/consultation_event.dart';
import 'package:vaidyaai/features/consultation/presentation/bloc/consultation_state.dart';
import 'package:vaidyaai/core/utils/screen_size.dart';

class PatientFormSection extends StatelessWidget {
  const PatientFormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConsultationBloc, ConsultationState>(
      builder: (context, state) {
        final l10n = AppLocalizations.of(context)!;
        
        return Container(
          decoration: BoxDecoration(
            color: AppColors.surfaceContainerLow,
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (ScreenSize.isMobile(context))
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    _FieldWrap(
                      label: l10n.patientName,
                      child: TextField(
                        onChanged: (v) => context.read<ConsultationBloc>().add(ConsultationEvent.nameChanged(v)),
                        decoration: InputDecoration(
                          hintText: l10n.johnDoe,
                          filled: true,
                          fillColor: AppColors.surfaceContainerLowest,
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide.none),
                        )
                      )
                    ),
                    const SizedBox(height: 24),
                    _FieldWrap(
                      label: l10n.age,
                      child: TextField(
                        onChanged: (v) => context.read<ConsultationBloc>().add(ConsultationEvent.ageChanged(v)),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: '28',
                          filled: true,
                          fillColor: AppColors.surfaceContainerLowest,
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide.none),
                        )
                      )
                    ),
                    const SizedBox(height: 24),
                    _FieldWrap(
                      label: l10n.gender,
                      child: DropdownButtonFormField<String>(
                        isExpanded: true,
                        iconSize: 20,
                        value: 'Female',
                        items: [
                          DropdownMenuItem(value: 'Male', child: Text(l10n.male, overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 13))),
                          DropdownMenuItem(value: 'Female', child: Text(l10n.female, overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 13))),
                          DropdownMenuItem(value: 'Other', child: Text(l10n.other, overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 13))),
                        ],
                        onChanged: (v) {},
                        decoration: InputDecoration(
                          filled: true,
                          isDense: true,
                          fillColor: AppColors.surfaceContainerLowest,
                          contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide.none),
                        )
                      ),
                    ),
                  ],
                )
              else
                Row(
                  children: [
                    Expanded(
                      child: _FieldWrap(
                        label: l10n.patientName,
                        child: TextField(
                          onChanged: (v) => context.read<ConsultationBloc>().add(ConsultationEvent.nameChanged(v)),
                          decoration: InputDecoration(
                            hintText: l10n.johnDoe,
                            filled: true,
                            fillColor: AppColors.surfaceContainerLowest,
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide.none),
                          )
                        )
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: _FieldWrap(
                        label: l10n.age,
                        child: TextField(
                          onChanged: (v) => context.read<ConsultationBloc>().add(ConsultationEvent.ageChanged(v)),
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: '28',
                            filled: true,
                            fillColor: AppColors.surfaceContainerLowest,
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide.none),
                          )
                        )
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: _FieldWrap(
                        label: l10n.gender,
                        child: DropdownButtonFormField<String>(
                          isExpanded: true,
                          iconSize: 20,
                          value: 'Female',
                          items: [
                            DropdownMenuItem(value: 'Male', child: Text(l10n.male, overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 13))),
                            DropdownMenuItem(value: 'Female', child: Text(l10n.female, overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 13))),
                            DropdownMenuItem(value: 'Other', child: Text(l10n.other, overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 13))),
                          ],
                          onChanged: (v) {},
                          decoration: InputDecoration(
                            filled: true,
                            isDense: true,
                            fillColor: AppColors.surfaceContainerLowest,
                            contentPadding: const EdgeInsets.fromLTRB(12, 12, 8, 12),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide.none),
                          )
                        ),
                      ),
                    )
                  ],
                ),
              const SizedBox(height: 32),
              _FieldWrap(
                label: l10n.symptomsChecklist,
                child: Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    ...state.activeSymptoms.map((s) => _SymptomChip(
                      label: s,
                      isActive: true,
                      onTap: () => context.read<ConsultationBloc>().add(ConsultationEvent.symptomToggled(s, false)),
                    )),
                    ...state.availableSymptoms.map((s) => _SymptomChip(
                      label: s,
                      isActive: false,
                      onTap: () => context.read<ConsultationBloc>().add(ConsultationEvent.symptomToggled(s, true)),
                    )),
                  ],
                )
              ),
              const SizedBox(height: 16),
              TextField(
                maxLines: 4,
                decoration: InputDecoration(
                  hintText: l10n.describeSymptoms,
                  filled: true,
                  fillColor: AppColors.surfaceContainerLowest,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide.none),
                )
              ),
              const SizedBox(height: 32),
              Row(
                children: [
                  Expanded(
                    child: _FieldWrap(
                      label: l10n.symptomDuration,
                      child: Row(
                        children: [
                          Expanded(
                            child: Slider(
                              value: state.duration,
                              min: 1,
                              max: 12,
                              activeColor: AppColors.primary,
                              inactiveColor: AppColors.surfaceContainerHighest,
                              onChanged: (v) => context.read<ConsultationBloc>().add(ConsultationEvent.durationChanged(v)),
                            ),
                          ),
                          SizedBox(width: 80, child: Text('${state.duration.toInt()} ${l10n.weeks}', style: const TextStyle(fontWeight: FontWeight.bold, color: AppColors.primary))),
                        ],
                      )
                    )
                  ),
                  Expanded(
                    child: _FieldWrap(
                      label: l10n.patientPrakriti,
                      child: Row(
                        children: [
                          _PrakritiBtn(label: l10n.vata, isActive: state.prakriti == 'Vata', onTap: () => context.read<ConsultationBloc>().add(const ConsultationEvent.prakritiChanged('Vata'))),
                          const SizedBox(width: 8),
                          _PrakritiBtn(label: l10n.pitta, isActive: state.prakriti == 'Pitta', onTap: () => context.read<ConsultationBloc>().add(const ConsultationEvent.prakritiChanged('Pitta'))),
                          const SizedBox(width: 8),
                          _PrakritiBtn(label: l10n.kapha, isActive: state.prakriti == 'Kapha', onTap: () => context.read<ConsultationBloc>().add(const ConsultationEvent.prakritiChanged('Kapha'))),
                        ],
                      )
                    )
                  ),
                ],
              ),
              const SizedBox(height: 32),
              ElevatedButton.icon(
                onPressed: state.isLoading ? null : () => context.read<ConsultationBloc>().add(const ConsultationEvent.generateDiagnosis()),
                icon: state.isLoading 
                  ? const SizedBox(width: 24, height: 24, child: CircularProgressIndicator(color: Colors.white, strokeWidth: 2))
                  : const Icon(Icons.auto_awesome),
                label: Text(state.isLoading ? l10n.consulting : l10n.generateAiDiagnosis),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 64),
                  textStyle: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
              )
            ],
          )
        );
      },
    );
  }
}

class _FieldWrap extends StatelessWidget {
  final String label;
  final Widget child;
  const _FieldWrap({required this.label, required this.child});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: Theme.of(context).textTheme.labelSmall?.copyWith(fontWeight: FontWeight.bold, color: AppColors.outline, letterSpacing: 1.2)),
        const SizedBox(height: 8),
        child,
      ],
    );
  }
}

class _SymptomChip extends StatelessWidget {
  final String label;
  final bool isActive;
  final VoidCallback onTap;

  const _SymptomChip({required this.label, required this.isActive, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isActive ? AppColors.secondaryFixed : AppColors.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(label, style: TextStyle(color: isActive ? AppColors.onSecondaryFixed : AppColors.onSurfaceVariant, fontSize: 12, fontWeight: FontWeight.bold)),
            if (isActive) ...[
              const SizedBox(width: 4),
              const Icon(Icons.close, size: 14, color: AppColors.onSecondaryFixed),
            ]
          ],
        ),
      ),
    );
  }
}

class _PrakritiBtn extends StatelessWidget {
  final String label;
  final bool isActive;
  final VoidCallback onTap;

  const _PrakritiBtn({required this.label, required this.isActive, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            color: isActive ? AppColors.primary : AppColors.surfaceContainerHighest,
            borderRadius: BorderRadius.circular(8),
            border: isActive ? Border.all(color: AppColors.primaryFixedDim, width: 2) : null,
          ),
          child: Text(label, style: TextStyle(color: isActive ? AppColors.onPrimary : AppColors.onSurfaceVariant, fontWeight: FontWeight.bold, fontSize: 12)),
        ),
      ),
    );
  }
}
