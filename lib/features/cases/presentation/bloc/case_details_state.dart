import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/case_details_entity.dart';

part 'case_details_state.freezed.dart';

@freezed
abstract class CaseDetailsState with _$CaseDetailsState {
  const factory CaseDetailsState({
    @Default(null) CaseDetailsEntity? caseDetails,
    @Default(false) bool isLoading,
    @Default(false) bool isSaving,
    String? errorMessage,
  }) = _CaseDetailsState;

  factory CaseDetailsState.initial() => const CaseDetailsState();
}
