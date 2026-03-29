import 'package:equatable/equatable.dart';
import '../../domain/entities/ai_diagnosis_entity.dart';

abstract class AiDiagnosisState extends Equatable {
  const AiDiagnosisState();
  
  @override
  List<Object?> get props => [];
}

class AiDiagnosisInitial extends AiDiagnosisState {
  const AiDiagnosisInitial();
}

class AiDiagnosisLoading extends AiDiagnosisState {
  const AiDiagnosisLoading();
}

class AiDiagnosisLoaded extends AiDiagnosisState {
  final AiDiagnosisEntity diagnosis;

  const AiDiagnosisLoaded(this.diagnosis);

  @override
  List<Object?> get props => [diagnosis];
}

class AiDiagnosisError extends AiDiagnosisState {
  final String message;

  const AiDiagnosisError(this.message);

  @override
  List<Object?> get props => [message];
}
