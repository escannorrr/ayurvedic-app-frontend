import '../entities/case_entity.dart';
import '../repositories/cases_repository.dart';

class FilterCases {
  final CasesRepository repository;

  FilterCases(this.repository);

  Future<List<CaseEntity>> call(DateTime? startDate, DateTime? endDate) async {
    return await repository.filterCases(startDate, endDate);
  }
}
