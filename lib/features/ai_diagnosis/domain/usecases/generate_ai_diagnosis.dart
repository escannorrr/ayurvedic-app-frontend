import '../entities/ai_diagnosis_entity.dart';
import '../entities/ai_diagnosis_request_entity.dart';
import '../repositories/ai_repository.dart';

class GenerateAiDiagnosis {
  final AiRepository repository;

  GenerateAiDiagnosis({required this.repository});

  Future<AiDiagnosisEntity> call(AiDiagnosisRequestEntity request) async {
    return await repository.generateDiagnosis(request);
  }
}
