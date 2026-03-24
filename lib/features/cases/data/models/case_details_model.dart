import '../../domain/entities/case_details_entity.dart';

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
      id: json['id'] as String,
      patientInfo: PatientInfoModel.fromJson(json['patientInfo'] as Map<String, dynamic>),
      consultations: (json['consultations'] as List)
          .map((e) => ConsultationModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      notes: json['notes'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'patientInfo': patientInfo.toJson(),
      'consultations': consultations.map((e) => e.toJson()).toList(),
      'notes': notes,
    };
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
      name: json['name'] as String,
      avatarUrl: json['avatarUrl'] as String,
      age: json['age'] as String,
      gender: json['gender'] as String,
      dosha: json['dosha'] as String,
      lastVisit: DateTime.parse(json['lastVisit'] as String),
      status: json['status'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'avatarUrl': avatarUrl,
      'age': age,
      'gender': gender,
      'dosha': dosha,
      'lastVisit': lastVisit.toIso8601String(),
      'status': status,
    };
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
      id: json['id'] as String,
      title: json['title'] as String,
      summary: json['summary'] as String,
      date: DateTime.parse(json['date'] as String),
      type: json['type'] as String,
      tags: List<String>.from(json['tags'] as List),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'summary': summary,
      'date': date.toIso8601String(),
      'type': type,
      'tags': tags,
    };
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
