import 'package:equatable/equatable.dart';

abstract class AiDiagnosisEvent extends Equatable {
  const AiDiagnosisEvent();

  @override
  List<Object?> get props => [];
}

class GenerateAiDiagnosisEvent extends AiDiagnosisEvent {
  final List<String> symptoms;
  final String? query;
  final int? durationDays;
  final String? prakriti;
  final int? age;
  final String? gender;

  const GenerateAiDiagnosisEvent({
    required this.symptoms,
    this.query,
    this.durationDays,
    this.prakriti,
    this.age,
    this.gender,
  });

  @override
  List<Object?> get props => [symptoms, query, durationDays, prakriti, age, gender];
}

class ResetDiagnosis extends AiDiagnosisEvent {
  const ResetDiagnosis();
}

class UpdateDiagnosisResult extends AiDiagnosisEvent {
  final String diagnosisName;
  final String summary;
  final List<String> possibleConditions;
  final List<String> medicinalProtocol;
  final List<String> lifestyleDiet;

  const UpdateDiagnosisResult({
    required this.diagnosisName,
    required this.summary,
    required this.possibleConditions,
    required this.medicinalProtocol,
    required this.lifestyleDiet,
  });

  @override
  List<Object?> get props => [diagnosisName, summary, possibleConditions, medicinalProtocol, lifestyleDiet];
}
