import 'package:flutter_bloc/flutter_bloc.dart';
import 'consultation_event.dart';
import 'consultation_state.dart';

class ConsultationBloc extends Bloc<ConsultationEvent, ConsultationState> {
  ConsultationBloc() : super(ConsultationState.initial()) {
    on<ConsultationEvent>((event, emit) async {
      await event.when(
        nameChanged: (name) async {
          emit(state.copyWith(name: name));
        },
        ageChanged: (age) async {
          emit(state.copyWith(age: age));
        },
        durationChanged: (duration) async {
          emit(state.copyWith(duration: duration));
        },
        prakritiChanged: (prakriti) async {
          emit(state.copyWith(prakriti: prakriti));
        },
        symptomToggled: (symptom, isAdding) async {
          final active = List<String>.from(state.activeSymptoms);
          final available = List<String>.from(state.availableSymptoms);
          if (isAdding) {
            active.add(symptom);
            available.remove(symptom);
          } else {
            active.remove(symptom);
            available.add(symptom);
          }
          emit(state.copyWith(activeSymptoms: active, availableSymptoms: available));
        },
        generateDiagnosis: () async {
          emit(state.copyWith(isLoading: true, errorMessage: null));
          
          // Simulating a heavy AI processing call
          await Future.delayed(const Duration(seconds: 3));
          
          emit(state.copyWith(
            isLoading: false,
            diagnosisResult: {
              "imbalance": "Vata-Pitta",
              "confidence": "94%",
              "herbs": ["Ashwagandha", "Brahmi", "Tulsi"],
              "lifestyle": ["Warm oil massage", "Early dinner (Before 7PM)"],
              "summary": "Patient exhibits classic signs of aggravated Vata pushing Pitta outwards. Primary approach should involve grounding therapies."
            }
          ));
        },
      );
    });
  }
}
