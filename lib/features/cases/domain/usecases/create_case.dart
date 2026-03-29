import 'package:vaidyaai/features/cases/domain/repositories/cases_repository.dart';
import 'package:vaidyaai/features/cases/domain/entities/case_entity.dart';

class CreateCaseUseCase {
  final CasesRepository repository;

  CreateCaseUseCase(this.repository);

  Future<void> call(CaseEntity caseEntity) async {
    return await repository.createCase(caseEntity);
  }
}
