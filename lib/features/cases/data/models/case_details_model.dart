import 'package:vaidyaai/features/cases/domain/entities/case_details_entity.dart';

class CaseDetailsModel {
  final String id;
  final PatientInfoModel patientInfo;
  final List<ConsultationModel> consultations;
  final String notes;

  const CaseDetailsModel({
    required this.id,
    required this.patientInfo,
    required this.consultations,
    required this.notes,
  });

  factory CaseDetailsModel.fromJson(Map<String, dynamic> json) {
    return CaseDetailsModel(
      id: json['id'] ?? '',
      patientInfo: PatientInfoModel.fromJson(json['patient_info'] ?? {}),
      consultations: (json['consultations'] as List? ?? [])
          .map((e) => ConsultationModel.fromJson(e))
          .toList(),
      notes: json['notes'] ?? '',
    );
  }

  CaseDetailsEntity toEntity() {
    return CaseDetailsEntity(
      id: id,
      patientInfo: patientInfo.toEntity(),
      consultations: consultations.map((e) => e.toEntity()).toList(),
      notes: notes,
    );
  }
}

class PatientInfoModel {
  final String name;
  final String avatarUrl;
  final String age;
  final String gender;
  final String dosha;
  final DateTime lastVisit;
  final String status;

  const PatientInfoModel({
    required this.name,
    required this.avatarUrl,
    required this.age,
    required this.gender,
    required this.dosha,
    required this.lastVisit,
    required this.status,
  });

  factory PatientInfoModel.fromJson(Map<String, dynamic> json) {
    return PatientInfoModel(
      name: json['name'] ?? '',
      avatarUrl: json['avatar_url'] ?? '',
      age: json['age'] ?? '',
      gender: json['gender'] ?? '',
      dosha: json['dosha'] ?? '',
      lastVisit: DateTime.parse(json['last_visit'] ?? DateTime.now().toIso8601String()),
      status: json['status'] ?? '',
    );
  }

  PatientInfo toEntity() {
    return PatientInfo(
      name: name,
      avatarUrl: avatarUrl,
      age: age,
      gender: gender,
      dosha: dosha,
      lastVisit: lastVisit,
      status: status,
    );
  }
}

class ConsultationModel {
  final String id;
  final String title;
  final String summary;
  final DateTime date;
  final String type;
  final List<String> tags;

  const ConsultationModel({
    required this.id,
    required this.title,
    required this.summary,
    required this.date,
    required this.type,
    required this.tags,
  });

  factory ConsultationModel.fromJson(Map<String, dynamic> json) {
    return ConsultationModel(
      id: json['id'] ?? '',
      title: json['title'] ?? '',
      summary: json['summary'] ?? '',
      date: DateTime.parse(json['date'] ?? DateTime.now().toIso8601String()),
      type: json['type'] ?? '',
      tags: List<String>.from(json['tags'] ?? []),
    );
  }

  ConsultationEntity toEntity() {
    return ConsultationEntity(
      id: id,
      title: title,
      summary: summary,
      date: date,
      type: type,
      tags: tags,
    );
  }
}
