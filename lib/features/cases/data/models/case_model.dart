import '../../domain/entities/case_entity.dart';

class CaseModel extends CaseEntity {
  const CaseModel({
    required super.id,
    required super.patientName,
    required super.age,
    required super.symptoms,
    required super.diagnosisSummary,
    required super.createdAt,
  });

  factory CaseModel.fromJson(Map<String, dynamic> json) {
    return CaseModel(
      id: json['id'] as String,
      patientName: json['patientName'] as String,
      age: json['age'] as int,
      symptoms: json['symptoms'] as String,
      diagnosisSummary: json['diagnosisSummary'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'patientName': patientName,
      'age': age,
      'symptoms': symptoms,
      'diagnosisSummary': diagnosisSummary,
      'createdAt': createdAt.toIso8601String(),
    };
  }

  CaseEntity toEntity() => this;
}
