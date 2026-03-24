import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/case_entity.dart';

part 'saved_cases_state.freezed.dart';

@freezed
abstract class SavedCasesState with _$SavedCasesState {
  const factory SavedCasesState({
    @Default([]) List<CaseEntity> cases,
    @Default(false) bool isLoading,
    @Default('') String searchQuery,
    String? errorMessage,
  }) = _SavedCasesState;

  factory SavedCasesState.initial() => const SavedCasesState();
}
