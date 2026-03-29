import 'package:vaidyaai/core/api/api_client.dart';
import 'package:vaidyaai/features/cases/data/models/case_model.dart';
import 'package:vaidyaai/features/cases/data/models/create_case_request_model.dart';

abstract class CasesRemoteDataSource {
  Future<List<CaseModel>> getCases({required int page, required int limit});
  Future<CaseModel> getCaseById(String id);
  Future<void> createCase(CreateCaseRequestModel request);
}

class CasesRemoteDataSourceImpl implements CasesRemoteDataSource {
  final ApiClient apiClient;

  CasesRemoteDataSourceImpl({required this.apiClient});

  @override
  Future<List<CaseModel>> getCases({required int page, required int limit}) async {
    final response = await apiClient.get(
      '/cases',
      queryParameters: {
        'page': page,
        'limit': limit,
      },
    );
    final List data = response.data['items'];
    return data.map((json) => CaseModel.fromJson(json)).toList();
  }

  @override
  Future<CaseModel> getCaseById(String id) async {
    final response = await apiClient.get('/cases/$id');
    return CaseModel.fromJson(response.data);
  }

  @override
  Future<void> createCase(CreateCaseRequestModel request) async {
    await apiClient.post('/cases', data: request.toJson());
  }
}
