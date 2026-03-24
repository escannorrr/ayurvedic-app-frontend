import '../entities/case_entity.dart';
import '../repositories/cases_repository.dart';

class SearchCases {
  final CasesRepository repository;

  SearchCases(this.repository);

  Future<List<CaseEntity>> call(String query) async {
    return await repository.searchCases(query);
  }
}
