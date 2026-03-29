import '../../domain/entities/ai_diagnosis_entity.dart';
import '../../domain/entities/ai_diagnosis_request_entity.dart';
import '../../domain/repositories/ai_repository.dart';
import '../datasources/ai_remote_data_source.dart';
import '../models/ai_diagnosis_request.dart';

class AiRepositoryImpl implements AiRepository {
  final AiRemoteDataSource remoteDataSource;

  AiRepositoryImpl({required this.remoteDataSource});

  @override
  Future<AiDiagnosisEntity> generateDiagnosis(AiDiagnosisRequestEntity request) async {
    final model = AiDiagnosisRequest(
      query: request.query,
      symptoms: request.symptoms,
      durationDays: request.durationDays,
      prakriti: request.prakriti,
      age: request.age,
      gender: request.gender,
    );
    
    final response = await remoteDataSource.generateDiagnosis(model);
    
    return AiDiagnosisEntity(
      diagnosisName: response.diagnosis.isNotEmpty ? response.diagnosis.first.condition : 'Nadi Pariksha Insight',
      summary: response.explanationString,
      possibleConditions: response.diagnosis.map((e) => e.condition).toList(),
      medicinalProtocol: response.treatment.herbs,
      lifestyleDiet: response.treatment.lifestyle,
      doshaPercentages: {
        'Vata': response.dosha.vata,
        'Pitta': response.dosha.pitta,
        'Kapha': response.dosha.kapha,
      },
    );
  }
}
