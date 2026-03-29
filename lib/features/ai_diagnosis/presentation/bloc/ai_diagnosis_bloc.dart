import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/generate_ai_diagnosis.dart';
import '../../domain/entities/ai_diagnosis_entity.dart';
import '../../domain/entities/ai_diagnosis_request_entity.dart';
import 'ai_diagnosis_event.dart';
import 'ai_diagnosis_state.dart';

class AiDiagnosisBloc extends Bloc<AiDiagnosisEvent, AiDiagnosisState> {
  final GenerateAiDiagnosis generateAiDiagnosis;

  AiDiagnosisBloc({required this.generateAiDiagnosis}) : super(const AiDiagnosisInitial()) {
    on<GenerateAiDiagnosisEvent>(_onGenerateDiagnosis);
    on<ResetDiagnosis>(_onResetDiagnosis);
    on<UpdateDiagnosisResult>(_onUpdateDiagnosisResult);
  }

  Future<void> _onGenerateDiagnosis(
    GenerateAiDiagnosisEvent event,
    Emitter<AiDiagnosisState> emit,
  ) async {
    if (state is AiDiagnosisLoading) return;
    
    emit(const AiDiagnosisLoading());
    try {
      final request = AiDiagnosisRequestEntity(
        query: event.query,
        symptoms: event.symptoms,
        durationDays: event.durationDays,
        prakriti: event.prakriti,
        age: event.age,
        gender: event.gender,
      );
      
      final diagnosis = await generateAiDiagnosis(request);
      emit(AiDiagnosisLoaded(diagnosis));
    } catch (e) {
      emit(AiDiagnosisError(e.toString()));
    }
  }

  void _onResetDiagnosis(
    ResetDiagnosis event,
    Emitter<AiDiagnosisState> emit,
  ) {
    emit(const AiDiagnosisInitial());
  }

  void _onUpdateDiagnosisResult(
    UpdateDiagnosisResult event,
    Emitter<AiDiagnosisState> emit,
  ) {
    final updatedDiagnosis = AiDiagnosisEntity(
      diagnosisName: event.diagnosisName,
      summary: event.summary,
      possibleConditions: event.possibleConditions,
      medicinalProtocol: event.medicinalProtocol,
      lifestyleDiet: event.lifestyleDiet,
      doshaPercentages: state is AiDiagnosisLoaded 
          ? (state as AiDiagnosisLoaded).diagnosis.doshaPercentages 
          : {'Vata': 0.33, 'Pitta': 0.33, 'Kapha': 0.34},
    );
    emit(AiDiagnosisLoaded(updatedDiagnosis));
  }
}
