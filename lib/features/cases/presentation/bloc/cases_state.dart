import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vaidyaai/features/cases/domain/entities/case_entity.dart';

part 'cases_state.freezed.dart';

@freezed
abstract class CasesState with _$CasesState {
  const factory CasesState({
    @Default([]) List<CaseEntity> cases,
    @Default(1) int currentPage,
    @Default(false) bool isLoading,
    @Default(true) bool hasMore,
    @Default('') String searchQuery,
    String? errorMessage,
  }) = _CasesState;

  factory CasesState.initial() => const CasesState();
}
