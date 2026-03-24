import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_state.freezed.dart';

@freezed
abstract class DashboardState with _$DashboardState {
  const factory DashboardState.initial() = _Initial;
  const factory DashboardState.loading() = _Loading;
  const factory DashboardState.success({
    required int patientsToday,
    required int aiConsultations,
    required int savedCases,
    required List<Map<String, String>> recentCases,
  }) = _Success;
  const factory DashboardState.error(String message) = _Error;
}
