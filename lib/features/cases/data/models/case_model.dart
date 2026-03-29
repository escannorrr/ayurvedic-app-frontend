import 'package:vaidyaai/features/cases/domain/entities/case_entity.dart';

class CaseModel {
  final String id;
  final String caseIdentifier;
  final String patientName;
  final String diagnosis;
  final DateTime createdAt;
  final String status;
  final Map<String, dynamic>? patientInfo;
  final Map<String, dynamic>? consultation;
  final Map<String, dynamic>? aiAnalysis;
  final Map<String, dynamic>? doctorInput;

  const CaseModel({
    required this.id,
    this.caseIdentifier = '',
    required this.patientName,
    required this.diagnosis,
    required this.createdAt,
    this.status = 'draft',
    this.patientInfo,
    this.consultation,
    this.aiAnalysis,
    this.doctorInput,
  });

  factory CaseModel.fromJson(Map<String, dynamic> json) {
    // Handle both 'id' as int or String
    final idVal = json['id']?.toString() ?? '';
    
    // Server uses 'diagnosis_summary' in listing, 'diagnosis' in detail (or nested)
    final diagnosisVal = json['diagnosis_summary'] ?? json['diagnosis'] ?? '';
    
    // Server uses 'date' in listing, 'created_at' in other places
    final dateStr = json['date'] ?? json['created_at'] ?? DateTime.now().toIso8601String();

    final patientInfoMap = json['patient_info'] as Map<String, dynamic>?;
    final patientNameVal = json['patient_name'] ?? patientInfoMap?['patient_name'] ?? '';

    return CaseModel(
      id: idVal,
      caseIdentifier: json['case_identifier'] ?? '',
      patientName: patientNameVal,
      diagnosis: diagnosisVal,
      createdAt: DateTime.parse(dateStr),
      status: json['status'] ?? 'draft',
      patientInfo: patientInfoMap,
      consultation: json['consultation'] as Map<String, dynamic>?,
      aiAnalysis: json['ai_analysis'] as Map<String, dynamic>?,
      doctorInput: json['doctor_input'] as Map<String, dynamic>?,
    );
  }

  CaseEntity toEntity() {
    int parsedAge = 0;
    final ageField = patientInfo?['age'];
    if (ageField is int) {
      parsedAge = ageField;
    } else if (ageField is String) {
      parsedAge = int.tryParse(ageField) ?? 0;
    }

    return CaseEntity(
      id: id,
      caseIdentifier: caseIdentifier,
      patientName: patientName,
      age: parsedAge,
      gender: patientInfo?['gender'] ?? 'Unknown',
      location: patientInfo?['location'] ?? 'Unknown',
      symptoms: (consultation?['symptoms'] as List?)?.map((e) => e.toString()).toList() ?? [],
      duration: consultation?['duration'] ?? '',
      notes: consultation?['notes'] ?? '',
      aiAnalysis: aiAnalysis,
      doctorInput: doctorInput,
      status: status,
      createdAt: createdAt,
      diagnosis: diagnosis,
    );
  }
}
