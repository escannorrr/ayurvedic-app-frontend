import 'package:flutter_bloc/flutter_bloc.dart';
import 'consultation_event.dart';
import 'consultation_state.dart';

class ConsultationBloc extends Bloc<ConsultationEvent, ConsultationState> {
  ConsultationBloc() : super(ConsultationState.initial()) {
    on<NameChanged>((event, emit) {
      emit(state.copyWith(patientName: event.name));
    });

    on<AgeChanged>((event, emit) {
      emit(state.copyWith(age: event.age));
    });

    on<SymptomInputChanged>((event, emit) {
      emit(state.copyWith(symptomInput: event.input));
    });
    
    on<AddSymptom>((event, emit) {
      final input = state.symptomInput.trim();
      if (input.isNotEmpty && !state.activeSymptoms.contains(input)) {
        final active = List<String>.from(state.activeSymptoms)..add(input);
        emit(state.copyWith(activeSymptoms: active, symptomInput: ''));
      }
    });

    on<RemoveSymptom>((event, emit) {
      final active = List<String>.from(state.activeSymptoms)..remove(event.symptom);
      emit(state.copyWith(activeSymptoms: active));
    });

    on<SymptomsDescriptionChanged>((event, emit) {
      emit(state.copyWith(symptomsDescription: event.description));
    });

    on<DurationChanged>((event, emit) {
      emit(state.copyWith(duration: event.duration));
    });

    on<PrakritiChanged>((event, emit) {
      emit(state.copyWith(prakriti: event.prakriti));
    });
    
    on<GenderChanged>((event, emit) {
      emit(state.copyWith(gender: event.gender));
    });

    on<GenerateDiagnosis>((event, emit) async {
      emit(state.copyWith(isLoading: true, errorMessage: null));
      try {
        await Future.delayed(const Duration(seconds: 2));
        emit(state.copyWith(isLoading: false, success: true));
      } catch (e) {
        emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
      }
    });

    on<AiDiagnosisSettled>((event, emit) {
      emit(state.copyWith(aiDiagnosis: event.diagnosis));
    });
  }
}
