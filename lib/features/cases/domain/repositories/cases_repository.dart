import 'package:vaidyaai/features/cases/domain/entities/case_entity.dart';
import 'package:vaidyaai/features/cases/domain/entities/case_details_entity.dart';

abstract class CasesRepository {
  Future<List<CaseEntity>> getCases({required int page, required int limit});
  Future<List<CaseEntity>> searchCases(String query);
  Future<List<CaseEntity>> filterCases(DateTime? startDate, DateTime? endDate);
  Future<CaseDetailsEntity> getCaseDetails(String id);
  Future<void> updateCaseNotes(String id, String notes);
  Future<void> createCase(CaseEntity caseEntity);
}
