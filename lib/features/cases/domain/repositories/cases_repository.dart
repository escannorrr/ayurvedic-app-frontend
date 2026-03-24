import '../entities/case_entity.dart';
import '../entities/case_details_entity.dart';

abstract class CasesRepository {
  Future<List<CaseEntity>> getCases();
  Future<List<CaseEntity>> searchCases(String query);
  Future<List<CaseEntity>> filterCases(DateTime? startDate, DateTime? endDate);
  Future<CaseDetailsEntity> getCaseDetails(String id);
  Future<void> updateCaseNotes(String id, String notes);
}
