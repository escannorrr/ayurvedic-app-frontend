import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/dashboard_stats.dart';

part 'dashboard_state.freezed.dart';

@freezed
abstract class DashboardState with _$DashboardState {
  const factory DashboardState.initial() = DashboardInitial;
  const factory DashboardState.loading() = DashboardLoading;
  const factory DashboardState.loaded(DashboardStats stats) = DashboardLoaded;
  const factory DashboardState.error(String message) = DashboardError;
}
