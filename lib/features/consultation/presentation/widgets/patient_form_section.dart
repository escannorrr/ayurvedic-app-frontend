import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vaidyaai/l10n/app_localizations.dart';
import 'package:vaidyaai/core/theme/app_colors.dart';
import 'package:vaidyaai/features/consultation/presentation/bloc/consultation_bloc.dart';
import 'package:vaidyaai/features/consultation/presentation/bloc/consultation_event.dart';
import 'package:vaidyaai/features/consultation/presentation/bloc/consultation_state.dart';
import 'package:vaidyaai/core/utils/screen_size.dart';
import 'package:vaidyaai/features/ai_diagnosis/presentation/widgets/ai_diagnosis_dialog.dart';
import 'package:vaidyaai/features/ai_diagnosis/presentation/bloc/ai_diagnosis_bloc.dart';
import 'package:vaidyaai/features/ai_diagnosis/presentation/bloc/ai_diagnosis_event.dart';
import 'package:vaidyaai/features/ai_diagnosis/domain/usecases/generate_ai_diagnosis.dart';
import 'package:vaidyaai/features/ai_diagnosis/data/repositories/ai_repository_impl.dart';
import 'package:vaidyaai/features/ai_diagnosis/data/datasources/ai_remote_data_source.dart';
import 'package:vaidyaai/features/cases/presentation/bloc/create_case_bloc.dart';
import 'package:vaidyaai/features/cases/presentation/bloc/create_case_event.dart';
import 'package:vaidyaai/features/cases/presentation/bloc/create_case_state.dart';
import 'package:vaidyaai/features/cases/domain/usecases/create_case.dart';
import 'package:vaidyaai/features/cases/data/repositories/cases_repository_impl.dart';
import 'package:vaidyaai/features/cases/data/datasources/cases_remote_data_source.dart';
import 'package:vaidyaai/features/cases/domain/entities/case_entity.dart';
import 'package:vaidyaai/core/api/api_client.dart';
import 'package:vaidyaai/core/di/injection_container.dart' as di;

class PatientFormSection extends StatefulWidget {
  const PatientFormSection({super.key});

  @override
  State<PatientFormSection> createState() => _PatientFormSectionState();
}

class _PatientFormSectionState extends State<PatientFormSection> {
  final TextEditingController _symptomController = TextEditingController();

  @override
  void dispose() {
    _symptomController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ConsultationBloc, ConsultationState>(
      listener: (context, state) {
        if (state.symptomInput.isEmpty && _symptomController.text.isNotEmpty) {
          _symptomController.clear();
        }
      },
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
                        value: state.gender,
                        items: [
                          DropdownMenuItem(value: 'Male', child: Text(l10n.male, overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 13))),
                          DropdownMenuItem(value: 'Female', child: Text(l10n.female, overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 13))),
                          DropdownMenuItem(value: 'Other', child: Text(l10n.other, overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 13))),
                        ],
                        onChanged: (v) {
                          if (v != null) {
                            context.read<ConsultationBloc>().add(ConsultationEvent.genderChanged(v));
                          }
                        },
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
                          value: state.gender,
                          items: [
                            DropdownMenuItem(value: 'Male', child: Text(l10n.male, overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 13))),
                            DropdownMenuItem(value: 'Female', child: Text(l10n.female, overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 13))),
                            DropdownMenuItem(value: 'Other', child: Text(l10n.other, overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 13))),
                          ],
                          onChanged: (v) {
                            if (v != null) {
                              context.read<ConsultationBloc>().add(ConsultationEvent.genderChanged(v));
                            }
                          },
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: _symptomController,
                            onChanged: (v) => context.read<ConsultationBloc>().add(ConsultationEvent.symptomInputChanged(v)),
                            onSubmitted: (_) => context.read<ConsultationBloc>().add(const ConsultationEvent.addSymptom()),
                            decoration: InputDecoration(
                              hintText: 'Enter symptom (e.g. Fever)',
                              filled: true,
                              fillColor: AppColors.surfaceContainerLowest,
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide.none),
                              prefixIcon: const Icon(Icons.search_rounded, size: 20),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        IconButton.filled(
                          onPressed: state.symptomInput.trim().isEmpty ? null : () {
                            context.read<ConsultationBloc>().add(const ConsultationEvent.addSymptom());
                          },
                          icon: const Icon(Icons.add_rounded),
                          style: IconButton.styleFrom(
                            backgroundColor: AppColors.primary,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                            padding: const EdgeInsets.all(16),
                          ),
                        ),
                      ],
                    ),
                    if (state.activeSymptoms.isNotEmpty) ...[
                      const SizedBox(height: 16),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: state.activeSymptoms.map((s) => _SymptomChip(
                          label: s,
                          isActive: true,
                          onTap: () => context.read<ConsultationBloc>().add(ConsultationEvent.removeSymptom(s)),
                        )).toList(),
                      ),
                    ],
                  ],
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                maxLines: 4,
                onChanged: (v) => context.read<ConsultationBloc>().add(ConsultationEvent.symptomsDescriptionChanged(v)),
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
              LayoutBuilder(
                builder: (context, constraints) {
                  final bool isNarrow = constraints.maxWidth < 600;
                  final List<Widget> buttons = [
                    Expanded(
                      flex: isNarrow ? 0 : 1,
                      child: ElevatedButton.icon(
                        onPressed: (state.isLoading || (state.activeSymptoms.isEmpty && state.symptomsDescription.trim().isEmpty)) ? null : () async {
                          final aiRemoteDataSource = AiRemoteDataSourceImpl(apiClient: di.sl<ApiClient>());
                          final aiRepository = AiRepositoryImpl(remoteDataSource: aiRemoteDataSource);
                          final generateAiDiagnosisUsecase = GenerateAiDiagnosis(repository: aiRepository);
                          final aiDiagnosisBloc = AiDiagnosisBloc(generateAiDiagnosis: generateAiDiagnosisUsecase);

                          aiDiagnosisBloc.add(GenerateAiDiagnosisEvent(
                            symptoms: state.activeSymptoms,
                            query: state.symptomsDescription.trim().isEmpty ? null : state.symptomsDescription.trim(),
                            durationDays: state.duration.toInt() * 7,
                            prakriti: state.prakriti.toLowerCase(),
                            age: int.tryParse(state.age) ?? 28,
                            gender: state.gender.toLowerCase(),
                          ));

                          final result = await AiDiagnosisDialog.show(
                            context,
                            symptoms: state.activeSymptoms,
                            patientInfo: {
                              'query': state.symptomsDescription,
                              'age': state.age,
                              'prakriti': state.prakriti,
                              'duration': '${state.duration.toInt()} weeks',
                              'gender': state.gender,
                            },
                            bloc: aiDiagnosisBloc,
                          );

                          if (result != null && context.mounted) {
                            context.read<ConsultationBloc>().add(ConsultationEvent.aiDiagnosisSettled(result));
                          }
                        },
                        icon: state.isLoading 
                          ? const SizedBox(width: 24, height: 24, child: CircularProgressIndicator(color: Colors.white, strokeWidth: 2))
                          : const Icon(Icons.auto_awesome),
                        label: Text(state.isLoading ? l10n.consulting : l10n.generateAiDiagnosis),
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(double.infinity, 64),
                          textStyle: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold, fontSize: 16),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        ),
                      ),
                    ),
                    SizedBox(width: isNarrow ? 0 : 16, height: isNarrow ? 12 : 0),
                    Expanded(
                      flex: isNarrow ? 0 : 1,
                      child: ElevatedButton.icon(
                        onPressed: (state.patientName.trim().isEmpty || (state.activeSymptoms.isEmpty && state.symptomsDescription.trim().isEmpty)) ? null : () async {
                          final casesRemoteDataSource = CasesRemoteDataSourceImpl(apiClient: di.sl<ApiClient>());
                          final casesRepository = CasesRepositoryImpl(remoteDataSource: casesRemoteDataSource);
                          final createCaseUseCase = CreateCaseUseCase(casesRepository);
                          final createCaseBloc = CreateCaseBloc(createCaseUseCase: createCaseUseCase);

                          final caseEntity = CaseEntity(
                            id: DateTime.now().millisecondsSinceEpoch.toString(),
                            patientName: state.patientName,
                            age: int.tryParse(state.age) ?? 0,
                            gender: state.gender,
                            symptoms: state.activeSymptoms,
                            duration: '${state.duration.toInt()} weeks',
                            notes: state.symptomsDescription,
                            aiAnalysis: state.aiDiagnosis?.toMap(),
                            createdAt: DateTime.now(),
                            diagnosis: state.aiDiagnosis?.diagnosisName ?? (state.symptomsDescription.isNotEmpty ? state.symptomsDescription : state.activeSymptoms.join(', ')),
                          );

                          final scaffoldMessenger = ScaffoldMessenger.of(context);
                          createCaseBloc.stream.listen((blocState) {
                             if (blocState is CreateCaseSuccess) {
                               scaffoldMessenger.showSnackBar(
                                 const SnackBar(content: Text('Case created successfully'), backgroundColor: Colors.green),
                               );
                             } else if (blocState is CreateCaseError) {
                               scaffoldMessenger.showSnackBar(
                                 SnackBar(content: Text('Error: ${blocState.message}'), backgroundColor: Colors.red),
                               );
                             }
                          });

                          createCaseBloc.add(CreateCaseEvent.submitCase(caseEntity));
                        },
                        icon: const Icon(Icons.add_task),
                        label: const Text('Create Case'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary,
                          foregroundColor: Colors.white,
                          disabledBackgroundColor: AppColors.outline.withValues(alpha: 0.1),
                          disabledForegroundColor: AppColors.outline.withValues(alpha: 0.5),
                          minimumSize: const Size(double.infinity, 64),
                          textStyle: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold, fontSize: 16),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        ),
                      ),
                    ),
                  ];

                  return isNarrow 
                    ? Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: buttons)
                    : Row(children: buttons);
                },
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
