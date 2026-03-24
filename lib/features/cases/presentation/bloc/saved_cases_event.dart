import 'package:freezed_annotation/freezed_annotation.dart';

part 'saved_cases_event.freezed.dart';

@freezed
abstract class SavedCasesEvent with _$SavedCasesEvent {
  const factory SavedCasesEvent.fetchCases() = _FetchCases;
  const factory SavedCasesEvent.searchCases(String query) = _SearchCases;
  const factory SavedCasesEvent.filterCases(DateTime? startDate, DateTime? endDate) = _FilterCases;
  const factory SavedCasesEvent.refreshCases() = _RefreshCases;
}
