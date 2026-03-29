import 'package:freezed_annotation/freezed_annotation.dart';

part 'consultation_event.freezed.dart';

@freezed
abstract class ConsultationEvent with _$ConsultationEvent {
  const factory ConsultationEvent.nameChanged(String name) = _NameChanged;
  const factory ConsultationEvent.ageChanged(String age) = _AgeChanged;
  const factory ConsultationEvent.durationChanged(double duration) = _DurationChanged;
  const factory ConsultationEvent.prakritiChanged(String prakriti) = _PrakritiChanged;
  const factory ConsultationEvent.symptomToggled(String symptom, bool isAdding) = _SymptomToggled;
  const factory ConsultationEvent.generateDiagnosis() = _GenerateDiagnosis;
}
