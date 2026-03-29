import 'package:freezed_annotation/freezed_annotation.dart';

part 'cases_event.freezed.dart';

@freezed
abstract class CasesEvent with _$CasesEvent {
  const factory CasesEvent.loadCases(int page) = LoadCases;
  const factory CasesEvent.nextPage() = NextPage;
  const factory CasesEvent.previousPage() = PreviousPage;
  const factory CasesEvent.searchCases(String query) = SearchCases;
}
