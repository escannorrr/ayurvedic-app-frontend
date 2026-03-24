import 'package:freezed_annotation/freezed_annotation.dart';

part 'case_details_entity.freezed.dart';

@freezed
abstract class CaseDetailsEntity with _$CaseDetailsEntity {
  const factory CaseDetailsEntity({
    required String id,
    required PatientInfo patientInfo,
    required List<ConsultationEntity> consultations,
    required String notes,
  }) = _CaseDetailsEntity;
}

@freezed
abstract class PatientInfo with _$PatientInfo {
  const factory PatientInfo({
    required String name,
    required String avatarUrl,
    required String age,
    required String gender,
    required String dosha,
    required DateTime lastVisit,
    required String status,
  }) = _PatientInfo;
}

@freezed
abstract class ConsultationEntity with _$ConsultationEntity {
  const factory ConsultationEntity({
    required String id,
    required String title,
    required String summary,
    required DateTime date,
    required String type,
    required List<String> tags,
  }) = _ConsultationEntity;
}
