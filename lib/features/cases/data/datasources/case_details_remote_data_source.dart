import 'package:vaidyaai/core/api/api_client.dart';
import 'package:vaidyaai/features/cases/data/models/case_details_model.dart';

abstract class CaseDetailsRemoteDataSource {
  Future<CaseDetailsModel> getCaseDetails(String id);
  Future<void> updateCaseNotes(String id, String notes);
}

class CaseDetailsRemoteDataSourceImpl implements CaseDetailsRemoteDataSource {
  final ApiClient apiClient;

  CaseDetailsRemoteDataSourceImpl({required this.apiClient});

  @override
  Future<CaseDetailsModel> getCaseDetails(String id) async {
    // Simulating API call with mock data
    await Future.delayed(const Duration(seconds: 1));
    return CaseDetailsModel(
      id: id,
      patientInfo: PatientInfoModel(
        name: 'Aditya Sharma',
        avatarUrl: 'https://lh3.googleusercontent.com/aida-public/AB6AXuCAI_boxeQBT1MqRZg-5BO4nGiWy271KX17EBBJLMrxIc8Ah2C7Y_5wBKBLiVtdEpi0fJaefq1UC4Gk8mg9ufgJ9vCR9TQvwz8DlTMUc4dNM4Ig-Qh0AFWWBxSsJLnwg9iFaSwO7M-dhPXHxpI4Dp0ypTPh-noL0sl3YZswJWlu8B9zM2wj4ywfh5CJAVXpjcurvUQUnQyCA_7l9tecFvIBtW8w_obzezfNb_NICri6xXpEYQDeiGeqDyeU0K_wGLjZUcwsiAdVp_k',
        age: '34',
        gender: 'Male',
        dosha: 'Pitta-Kapha',
        lastVisit: DateTime(2023, 10, 12),
        status: 'Improving',
      ),
      consultations: [
        ConsultationModel(
          id: '1',
          title: 'Improved Agni & Sleep Pattern',
          summary: 'Patient reports significant reduction in acidity. Digestion has stabilized after the introduction of Avipattikara Churna. Sleep duration increased to 7 hours.',
          date: DateTime(2023, 10, 12),
          type: 'FOLLOW-UP #02',
          tags: ['#Digestion', '#Nidra'],
        ),
        ConsultationModel(
          id: '2',
          title: 'Initial Response to Diet',
          summary: 'Minor improvement in energy levels. Patient still experiencing afternoon fatigue. Adjusted morning ritual to include ginger water.',
          date: DateTime(2023, 9, 28),
          type: 'FOLLOW-UP #01',
          tags: [],
        ),
        ConsultationModel(
          id: '3',
          title: 'Chronic Acidity & Burnout',
          summary: 'Primary complaint: Burning sensation in chest, irritability, and restless legs. Prakriti assessment reveals high Pitta vikriti.',
          date: DateTime(2023, 9, 10),
          type: 'INITIAL DIAGNOSIS',
          tags: [],
        ),
      ],
      notes: 'Observed decreased tongue coating (Ama). Patient compliant with Pitta-pacifying diet. Recommended switching from morning coffee to herbal tea infusion. Next review in 14 days to assess bowel movements.',
    );
  }

  @override
  Future<void> updateCaseNotes(String id, String notes) async {
    await apiClient.post('/cases/$id/notes', data: {'notes': notes});
  }
}
