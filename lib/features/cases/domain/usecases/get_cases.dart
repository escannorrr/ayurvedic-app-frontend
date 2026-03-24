import '../entities/case_entity.dart';
import '../repositories/cases_repository.dart';

class GetCases {
  final CasesRepository repository;

  GetCases(this.repository);

  Future<List<CaseEntity>> call() async {
    return await repository.getCases();
  }
}
