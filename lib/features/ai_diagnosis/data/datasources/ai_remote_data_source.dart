import 'package:vaidyaai/core/api/api_client.dart';
import '../models/ai_diagnosis_request.dart';
import '../models/ai_diagnosis_response.dart';

abstract class AiRemoteDataSource {
  Future<AiDiagnosisResponse> generateDiagnosis(AiDiagnosisRequest request);
}

class AiRemoteDataSourceImpl implements AiRemoteDataSource {
  final ApiClient apiClient;

  AiRemoteDataSourceImpl({required this.apiClient});

  @override
  Future<AiDiagnosisResponse> generateDiagnosis(AiDiagnosisRequest request) async {
    final response = await apiClient.post(
      '/diagnose',
      data: request.toJson(),
    );
    
    return AiDiagnosisResponse.fromJson(response.data);
  }
}
