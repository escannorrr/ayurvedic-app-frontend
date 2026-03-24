import 'package:freezed_annotation/freezed_annotation.dart';

part 'case_details_event.freezed.dart';

@freezed
abstract class CaseDetailsEvent with _$CaseDetailsEvent {
  const factory CaseDetailsEvent.loadCaseDetails(String id) = _LoadCaseDetails;
  const factory CaseDetailsEvent.updateNotes(String caseId, String notes) = _UpdateNotes;
}
