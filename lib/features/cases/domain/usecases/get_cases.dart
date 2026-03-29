import '../entities/case_entity.dart';
import '../repositories/cases_repository.dart';

class GetCases {
  final CasesRepository repository;

  GetCases(this.repository);

  Future<List<CaseEntity>> call({required int page, required int limit}) async {
    return await repository.getCases(page: page, limit: limit);
  }
}
