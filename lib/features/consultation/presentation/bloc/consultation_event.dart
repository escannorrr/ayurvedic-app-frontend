import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vaidyaai/features/ai_diagnosis/domain/entities/ai_diagnosis_entity.dart';

part 'consultation_event.freezed.dart';

@freezed
abstract class ConsultationEvent with _$ConsultationEvent {
  const factory ConsultationEvent.nameChanged(String name) = NameChanged;
  const factory ConsultationEvent.ageChanged(String age) = AgeChanged;
  const factory ConsultationEvent.symptomInputChanged(String input) = SymptomInputChanged;
  const factory ConsultationEvent.addSymptom() = AddSymptom;
  const factory ConsultationEvent.removeSymptom(String symptom) = RemoveSymptom;
  const factory ConsultationEvent.symptomsDescriptionChanged(String description) = SymptomsDescriptionChanged;
  const factory ConsultationEvent.durationChanged(double duration) = DurationChanged;
  const factory ConsultationEvent.prakritiChanged(String prakriti) = PrakritiChanged;
  const factory ConsultationEvent.genderChanged(String gender) = GenderChanged;
  const factory ConsultationEvent.generateDiagnosis() = GenerateDiagnosis;
  const factory ConsultationEvent.aiDiagnosisSettled(AiDiagnosisEntity diagnosis) = AiDiagnosisSettled;
}
