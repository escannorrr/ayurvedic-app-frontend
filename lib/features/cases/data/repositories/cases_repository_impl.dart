import 'package:vaidyaai/features/cases/domain/entities/case_entity.dart';
import 'package:vaidyaai/features/cases/domain/entities/case_details_entity.dart';
import 'package:vaidyaai/features/cases/domain/repositories/cases_repository.dart';
import 'package:vaidyaai/features/cases/data/datasources/cases_remote_data_source.dart';
import 'package:vaidyaai/features/cases/data/models/create_case_request_model.dart';
import 'package:vaidyaai/core/error/failures.dart';

class CasesRepositoryImpl implements CasesRepository {
  final CasesRemoteDataSource remoteDataSource;

  CasesRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<CaseEntity>> getCases({required int page, required int limit}) async {
    try {
      final models = await remoteDataSource.getCases(page: page, limit: limit);
      return models.map((model) => model.toEntity()).toList();
    } catch (e) {
      throw ServerFailure(e.toString());
    }
  }

  @override
  Future<List<CaseEntity>> searchCases(String query) async {
    try {
      final models = await remoteDataSource.getCases(page: 1, limit: 100); // Simple search
      return models
          .where((m) => m.patientName.toLowerCase().contains(query.toLowerCase()))
          .map((m) => m.toEntity())
          .toList();
    } catch (e) {
      throw ServerFailure(e.toString());
    }
  }

  @override
  Future<List<CaseEntity>> filterCases(DateTime? startDate, DateTime? endDate) async {
    return getCases(page: 1, limit: 10); // Mock filter
  }

  @override
  Future<CaseDetailsEntity> getCaseDetails(String id) async {
    try {
      final model = await remoteDataSource.getCaseById(id);
      final entity = model.toEntity();
      
      // Map entity fields to CaseDetailsEntity structure
      return CaseDetailsEntity(
        id: entity.id,
        patientInfo: PatientInfo(
          name: entity.patientName,
          avatarUrl: '', // Default avatar
          age: entity.age.toString(),
          gender: entity.gender,
          dosha: entity.aiAnalysis?['dosha']?['dominant'] ?? 'Unknown',
          lastVisit: entity.createdAt,
          status: entity.status,
        ),
        consultations: [
          ConsultationEntity(
            id: 'cons_${entity.id}',
            title: 'Primary Consultation',
            summary: entity.diagnosis.isNotEmpty ? entity.diagnosis : 'No Diagnosis Summary',
            date: entity.createdAt,
            type: 'AI Analysis',
            tags: entity.symptoms,
          )
        ],
        notes: entity.notes,
      );
    } catch (e) {
      throw ServerFailure(e.toString());
    }
  }

  @override
  Future<void> updateCaseNotes(String id, String notes) async {
    // Mock update
  }

  @override
  Future<void> createCase(CaseEntity caseEntity) async {
    try {
      final aiResult = caseEntity.aiAnalysis ?? _emptyAiAnalysis;
      
      final request = CreateCaseRequestModel(
        patientInfo: {
          'patient_name': caseEntity.patientName,
          'age': caseEntity.age,
          'gender': caseEntity.gender,
          'location': caseEntity.location,
        },
        consultation: {
          'symptoms': caseEntity.symptoms,
          'duration': caseEntity.duration,
          'notes': caseEntity.notes,
        },
        aiAnalysis: aiResult,
        doctorInput: caseEntity.doctorInput ?? {
          'final_diagnosis': [caseEntity.diagnosis],
          'clinical_notes': caseEntity.notes,
          'is_ai_used': caseEntity.aiAnalysis != null,
        },
        status: caseEntity.status,
        diagnosisResult: aiResult,
      );
      await remoteDataSource.createCase(request);
    } catch (e) {
      throw ServerFailure(e.toString());
    }
  }

  Map<String, dynamic> get _emptyAiAnalysis => {
    'diagnosis': [],
    'confidence': 0,
    'dosha': {'vata': 0, 'pitta': 0, 'kapha': 0},
    'explanation': '',
    'dosha_analysis': '',
    'treatment': {
      'principles': [],
      'herbs': [],
      'formulations': [],
      'diet': [],
      'lifestyle': [],
    },
    'precautions': [],
    'when_to_consult': [],
    'follow_up_question': '',
    'debug': {},
  };
}
