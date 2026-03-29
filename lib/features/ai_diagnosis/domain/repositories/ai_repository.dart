import '../entities/ai_diagnosis_entity.dart';
import '../entities/ai_diagnosis_request_entity.dart';

abstract class AiRepository {
  Future<AiDiagnosisEntity> generateDiagnosis(AiDiagnosisRequestEntity request);
}
