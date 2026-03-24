import 'package:dio/dio.dart';
import '../models/case_model.dart';

abstract class CasesRemoteDataSource {
  Future<List<CaseModel>> getCases();
  Future<List<CaseModel>> searchCases(String query);
  Future<List<CaseModel>> filterCases(DateTime? startDate, DateTime? endDate);
}

class CasesRemoteDataSourceImpl implements CasesRemoteDataSource {
  final Dio dio;

  CasesRemoteDataSourceImpl({required this.dio});

  @override
  Future<List<CaseModel>> getCases() async {
    await Future.delayed(const Duration(seconds: 1));
    return _mockData;
  }

  @override
  Future<List<CaseModel>> searchCases(String query) async {
    await Future.delayed(const Duration(milliseconds: 500));
    final q = query.toLowerCase();
    return _mockData.where((element) => 
      element.patientName.toLowerCase().contains(q) || 
      element.symptoms.toLowerCase().contains(q)
    ).toList();
  }

  @override
  Future<List<CaseModel>> filterCases(DateTime? startDate, DateTime? endDate) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _mockData;
  }

  List<CaseModel> get _mockData => [
    CaseModel(
      id: 'case_001', 
      patientName: 'Rahul Sharma', 
      age: 34, 
      symptoms: 'Chronic back pain, Stiffness', 
      diagnosisSummary: 'Vata Aggravation. Prescribed Ashwagandha and Kati Basti.', 
      createdAt: DateTime.now().subtract(const Duration(days: 1))
    ),
    CaseModel(
      id: 'case_002', 
      patientName: 'Priya Desai', 
      age: 28, 
      symptoms: 'Indigestion, Acidity, Headache', 
      diagnosisSummary: 'Pitta Imbalance. Dietary changes and Amla recommended.', 
      createdAt: DateTime.now().subtract(const Duration(days: 3))
    ),
    CaseModel(
      id: 'case_003', 
      patientName: 'Anil Kapoor', 
      age: 45, 
      symptoms: 'Joint pain, Lethargy, Weight gain', 
      diagnosisSummary: 'Kapha Accumulation. Triphala and warm water fasting advised.', 
      createdAt: DateTime.now().subtract(const Duration(days: 8))
    ),
    CaseModel(
      id: 'case_004', 
      patientName: 'Sanjay Kumar', 
      age: 52, 
      symptoms: 'Insomnia, Stress, Muscle Twitches', 
      diagnosisSummary: 'Vata-Pitta Imbalance. Meditation and Brahmi prescribed.', 
      createdAt: DateTime.now().subtract(const Duration(days: 12))
    ),
    CaseModel(
      id: 'case_005', 
      patientName: 'Meera Patel', 
      age: 31, 
      symptoms: 'Dry skin, Constipation', 
      diagnosisSummary: 'High Vata DOSHA. Oil massages and Ghee recommended.', 
      createdAt: DateTime.now().subtract(const Duration(days: 15))
    ),
    CaseModel(
      id: 'case_006', 
      patientName: 'Vikram Singh', 
      age: 60, 
      symptoms: 'Knee pain, Swelling', 
      diagnosisSummary: 'Vata-Kapha aggravation. Janu Basti treatment assigned.', 
      createdAt: DateTime.now().subtract(const Duration(days: 21))
    ),
  ];
}
