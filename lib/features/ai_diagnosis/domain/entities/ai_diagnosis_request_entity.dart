import 'package:equatable/equatable.dart';

class AiDiagnosisRequestEntity extends Equatable {
  final String? query;
  final List<String> symptoms;
  final int? durationDays;
  final String? prakriti;
  final int? age;
  final String? gender;

  const AiDiagnosisRequestEntity({
    this.query,
    required this.symptoms,
    this.durationDays,
    this.prakriti,
    this.age,
    this.gender,
  });

  @override
  List<Object?> get props => [query, symptoms, durationDays, prakriti, age, gender];
}
