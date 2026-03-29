import 'package:freezed_annotation/freezed_annotation.dart';

part 'case_entity.freezed.dart';

@freezed
abstract class CaseEntity with _$CaseEntity {
  const CaseEntity._();

  const factory CaseEntity({
    required String id,
    @Default('') String caseIdentifier,
    required String patientName,
    @Default(0) int age,
    @Default('Unknown') String gender,
    @Default('Unknown') String location,
    @Default([]) List<String> symptoms,
    @Default('') String duration,
    @Default('') String notes,
    Map<String, dynamic>? aiAnalysis,
    Map<String, dynamic>? doctorInput,
    @Default('draft') String status,
    required DateTime createdAt,
    @Default('') String diagnosis,
  }) = _CaseEntity;

  String get diagnosisSummary => diagnosis.isNotEmpty ? diagnosis : 'No Diagnosis';
}
