import '../../domain/entities/case_details_entity.dart';
import '../../domain/entities/case_entity.dart';
import '../../domain/repositories/cases_repository.dart';
import '../datasources/case_details_remote_data_source.dart';
import '../datasources/cases_remote_data_source.dart';

class CasesRepositoryImpl implements CasesRepository {
  final CasesRemoteDataSource remoteDataSource;
  final CaseDetailsRemoteDataSource detailsRemoteDataSource;

  CasesRepositoryImpl({
    required this.remoteDataSource,
    required this.detailsRemoteDataSource,
  });

  @override
  Future<List<CaseEntity>> getCases() async {
    final models = await remoteDataSource.getCases();
    return models.map((e) => e.toEntity()).toList();
  }

  @override
  Future<List<CaseEntity>> searchCases(String query) async {
    final models = await remoteDataSource.searchCases(query);
    return models.map((e) => e.toEntity()).toList();
  }

  @override
  Future<List<CaseEntity>> filterCases(DateTime? startDate, DateTime? endDate) async {
    final models = await remoteDataSource.filterCases(startDate, endDate);
    return models.map((e) => e.toEntity()).toList();
  }

  @override
  Future<CaseDetailsEntity> getCaseDetails(String id) async {
    final model = await detailsRemoteDataSource.getCaseDetails(id);
    return model.toEntity();
  }

  @override
  Future<void> updateCaseNotes(String id, String notes) async {
    return await detailsRemoteDataSource.updateCaseNotes(id, notes);
  }
}
