import 'package:freezed_annotation/freezed_annotation.dart';

part 'consultation_state.freezed.dart';

@freezed
abstract class ConsultationState with _$ConsultationState {
  const factory ConsultationState({
    @Default('') String name,
    @Default('') String age,
    @Default(2.0) double duration,
    @Default('Vata') String prakriti,
    @Default(['Indigestion', 'Insomnia']) List<String> activeSymptoms,
    @Default(['Joint Pain', 'Fatigue', 'Anxiety', 'Acidity']) List<String> availableSymptoms,
    @Default(false) bool isLoading,
    Map<String, dynamic>? diagnosisResult,
    String? errorMessage,
  }) = _ConsultationState;

  factory ConsultationState.initial() => const ConsultationState();
}
