class CaseEntity {
  final String id;
  final String patientName;
  final int age;
  final String symptoms;
  final String diagnosisSummary;
  final DateTime createdAt;

  const CaseEntity({
    required this.id,
    required this.patientName,
    required this.age,
    required this.symptoms,
    required this.diagnosisSummary,
    required this.createdAt,
  });
}
