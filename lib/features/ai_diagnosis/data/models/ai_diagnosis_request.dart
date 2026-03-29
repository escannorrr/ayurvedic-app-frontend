class AiDiagnosisRequest {
  final String? query;
  final List<String> symptoms;
  final int? durationDays;
  final String? prakriti;
  final int? age;
  final String? gender;

  AiDiagnosisRequest({
    this.query,
    required this.symptoms,
    this.durationDays,
    this.prakriti,
    this.age,
    this.gender,
  });

  Map<String, dynamic> toJson() {
    return {
      if (query != null) 'query': query,
      'symptoms': symptoms,
      if (durationDays != null) 'duration_days': durationDays,
      if (prakriti != null) 'prakriti': prakriti,
      if (age != null) 'age': age,
      if (gender != null) 'gender': gender,
    };
  }
}
