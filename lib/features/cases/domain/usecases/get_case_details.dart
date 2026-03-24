import '../entities/case_details_entity.dart';
import '../repositories/cases_repository.dart';

class GetCaseDetails {
  final CasesRepository repository;

  GetCaseDetails(this.repository);

  Future<CaseDetailsEntity> call(String id) async {
    return await repository.getCaseDetails(id);
  }
}
