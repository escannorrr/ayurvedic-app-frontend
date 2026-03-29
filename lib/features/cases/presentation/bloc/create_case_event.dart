import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vaidyaai/features/cases/domain/entities/case_entity.dart';

part 'create_case_event.freezed.dart';

@freezed
abstract class CreateCaseEvent with _$CreateCaseEvent {
  const factory CreateCaseEvent.submitCase(CaseEntity caseEntity) = SubmitCase;
}
