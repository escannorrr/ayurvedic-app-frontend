import '../repositories/cases_repository.dart';

class UpdateCaseNotes {
  final CasesRepository repository;

  UpdateCaseNotes(this.repository);

  Future<void> call(String id, String notes) async {
    return await repository.updateCaseNotes(id, notes);
  }
}
