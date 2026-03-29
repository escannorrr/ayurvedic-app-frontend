import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vaidyaai/features/ai_diagnosis/domain/entities/ai_diagnosis_entity.dart';

part 'consultation_state.freezed.dart';

@freezed
abstract class ConsultationState with _$ConsultationState {
  const factory ConsultationState({
    @Default('') String patientName,
    @Default('') String age,
    @Default([]) List<String> activeSymptoms,
    @Default('') String symptomInput,
    @Default('') String symptomsDescription,
    @Default(1.0) double duration,
    @Default('Vata') String prakriti,
    @Default('Female') String gender,
    @Default(false) bool isLoading,
    String? errorMessage,
    Map<String, dynamic>? diagnosisResult,
    AiDiagnosisEntity? aiDiagnosis,
    bool? success,
  }) = _ConsultationState;

  factory ConsultationState.initial() => const ConsultationState();
}
