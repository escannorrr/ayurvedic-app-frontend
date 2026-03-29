import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_stats.freezed.dart';

@freezed
abstract class DashboardStats with _$DashboardStats {
  const factory DashboardStats({
    required int totalCases,
    required int activeCases,
    required int consultationsToday,
    required double growthRate,
  }) = _DashboardStats;
}
