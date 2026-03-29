import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_case_state.freezed.dart';

@freezed
abstract class CreateCaseState with _$CreateCaseState {
  const factory CreateCaseState.initial() = CreateCaseInitial;
  const factory CreateCaseState.submitting() = CreateCaseSubmitting;
  const factory CreateCaseState.success() = CreateCaseSuccess;
  const factory CreateCaseState.error(String message) = CreateCaseError;
}
