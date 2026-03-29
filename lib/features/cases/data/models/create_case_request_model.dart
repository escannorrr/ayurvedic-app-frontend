class CreateCaseRequestModel {
  final Map<String, dynamic> patientInfo;
  final Map<String, dynamic> consultation;
  final Map<String, dynamic> aiAnalysis;
  final Map<String, dynamic> doctorInput;
  final String status;
  final Map<String, dynamic> diagnosisResult;

  CreateCaseRequestModel({
    required this.patientInfo,
    required this.consultation,
    required this.aiAnalysis,
    required this.doctorInput,
    required this.status,
    required this.diagnosisResult,
  });

  Map<String, dynamic> toJson() {
    return {
      'patient_info': patientInfo,
      'consultation': consultation,
      'ai_analysis': aiAnalysis,
      'doctor_input': doctorInput,
      'status': status,
      'diagnosis_result': diagnosisResult,
    };
  }
}
